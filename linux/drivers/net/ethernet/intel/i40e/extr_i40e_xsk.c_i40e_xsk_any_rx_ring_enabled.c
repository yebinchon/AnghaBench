
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i40e_vsi {int num_queue_pairs; struct net_device* netdev; } ;


 scalar_t__ xdp_get_umem_from_qid (struct net_device*,int) ;

bool i40e_xsk_any_rx_ring_enabled(struct i40e_vsi *vsi)
{
 struct net_device *netdev = vsi->netdev;
 int i;

 for (i = 0; i < vsi->num_queue_pairs; i++) {
  if (xdp_get_umem_from_qid(netdev, i))
   return 1;
 }

 return 0;
}
