
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xdp_umem {int dummy; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {int af_xdp_zc_qps; struct net_device* netdev; } ;


 int EINVAL ;
 int clear_bit (int ,int ) ;
 scalar_t__ i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_queue_pair_disable (struct i40e_vsi*,int ) ;
 int i40e_queue_pair_enable (struct i40e_vsi*,int ) ;
 int i40e_xsk_umem_dma_unmap (struct i40e_vsi*,struct xdp_umem*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct xdp_umem* xdp_get_umem_from_qid (struct net_device*,int ) ;

__attribute__((used)) static int i40e_xsk_umem_disable(struct i40e_vsi *vsi, u16 qid)
{
 struct net_device *netdev = vsi->netdev;
 struct xdp_umem *umem;
 bool if_running;
 int err;

 umem = xdp_get_umem_from_qid(netdev, qid);
 if (!umem)
  return -EINVAL;

 if_running = netif_running(vsi->netdev) && i40e_enabled_xdp_vsi(vsi);

 if (if_running) {
  err = i40e_queue_pair_disable(vsi, qid);
  if (err)
   return err;
 }

 clear_bit(qid, vsi->af_xdp_zc_qps);
 i40e_xsk_umem_dma_unmap(vsi, umem);

 if (if_running) {
  err = i40e_queue_pair_enable(vsi, qid);
  if (err)
   return err;
 }

 return 0;
}
