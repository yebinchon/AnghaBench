
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xdp_umem {int dummy; } ;
struct ixgbe_adapter {int af_xdp_zc_qps; int netdev; } ;


 int EINVAL ;
 int clear_bit (int ,int ) ;
 scalar_t__ ixgbe_enabled_xdp_adapter (struct ixgbe_adapter*) ;
 int ixgbe_txrx_ring_disable (struct ixgbe_adapter*,int ) ;
 int ixgbe_txrx_ring_enable (struct ixgbe_adapter*,int ) ;
 int ixgbe_xsk_umem_dma_unmap (struct ixgbe_adapter*,struct xdp_umem*) ;
 scalar_t__ netif_running (int ) ;
 struct xdp_umem* xdp_get_umem_from_qid (int ,int ) ;

__attribute__((used)) static int ixgbe_xsk_umem_disable(struct ixgbe_adapter *adapter, u16 qid)
{
 struct xdp_umem *umem;
 bool if_running;

 umem = xdp_get_umem_from_qid(adapter->netdev, qid);
 if (!umem)
  return -EINVAL;

 if_running = netif_running(adapter->netdev) &&
       ixgbe_enabled_xdp_adapter(adapter);

 if (if_running)
  ixgbe_txrx_ring_disable(adapter, qid);

 clear_bit(qid, adapter->af_xdp_zc_qps);
 ixgbe_xsk_umem_dma_unmap(adapter, umem);

 if (if_running)
  ixgbe_txrx_ring_enable(adapter, qid);

 return 0;
}
