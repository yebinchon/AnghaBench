
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct xdp_umem_fq_reuse {int dummy; } ;
struct xdp_umem {int dummy; } ;
struct net_device {scalar_t__ real_num_rx_queues; scalar_t__ real_num_tx_queues; } ;
struct ixgbe_adapter {scalar_t__ num_rx_queues; struct net_device* netdev; int af_xdp_zc_qps; TYPE_1__** rx_ring; } ;
struct TYPE_2__ {int count; } ;


 int EINVAL ;
 int ENOMEM ;
 int XDP_WAKEUP_RX ;
 scalar_t__ ixgbe_enabled_xdp_adapter (struct ixgbe_adapter*) ;
 int ixgbe_txrx_ring_disable (struct ixgbe_adapter*,scalar_t__) ;
 int ixgbe_txrx_ring_enable (struct ixgbe_adapter*,scalar_t__) ;
 int ixgbe_xsk_umem_dma_map (struct ixgbe_adapter*,struct xdp_umem*) ;
 int ixgbe_xsk_wakeup (struct net_device*,scalar_t__,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int set_bit (scalar_t__,int ) ;
 int xsk_reuseq_free (int ) ;
 struct xdp_umem_fq_reuse* xsk_reuseq_prepare (int ) ;
 int xsk_reuseq_swap (struct xdp_umem*,struct xdp_umem_fq_reuse*) ;

__attribute__((used)) static int ixgbe_xsk_umem_enable(struct ixgbe_adapter *adapter,
     struct xdp_umem *umem,
     u16 qid)
{
 struct net_device *netdev = adapter->netdev;
 struct xdp_umem_fq_reuse *reuseq;
 bool if_running;
 int err;

 if (qid >= adapter->num_rx_queues)
  return -EINVAL;

 if (qid >= netdev->real_num_rx_queues ||
     qid >= netdev->real_num_tx_queues)
  return -EINVAL;

 reuseq = xsk_reuseq_prepare(adapter->rx_ring[0]->count);
 if (!reuseq)
  return -ENOMEM;

 xsk_reuseq_free(xsk_reuseq_swap(umem, reuseq));

 err = ixgbe_xsk_umem_dma_map(adapter, umem);
 if (err)
  return err;

 if_running = netif_running(adapter->netdev) &&
       ixgbe_enabled_xdp_adapter(adapter);

 if (if_running)
  ixgbe_txrx_ring_disable(adapter, qid);

 set_bit(qid, adapter->af_xdp_zc_qps);

 if (if_running) {
  ixgbe_txrx_ring_enable(adapter, qid);


  err = ixgbe_xsk_wakeup(adapter->netdev, qid, XDP_WAKEUP_RX);
  if (err)
   return err;
 }

 return 0;
}
