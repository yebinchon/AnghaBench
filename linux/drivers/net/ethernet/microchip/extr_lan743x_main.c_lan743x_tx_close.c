
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_tx {int * overflow_skb; int channel_number; int napi; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;


 int DMAC_CMD ;
 int DMAC_CMD_STOP_T_ (int ) ;
 int DMAC_INT_BIT_TX_IOC_ (int ) ;
 int DMAC_INT_EN_CLR ;
 int FCT_TX_CTL ;
 int FCT_TX_CTL_DIS_ (int ) ;
 int FCT_TX_CTL_EN_ (int ) ;
 int INT_BIT_DMA_TX_ (int ) ;
 int INT_EN_CLR ;
 int dev_kfree_skb (int *) ;
 int lan743x_csr_wait_for_bit (struct lan743x_adapter*,int ,int ,int ,int,int,int) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;
 int lan743x_dmac_tx_wait_till_stopped (struct lan743x_adapter*,int ) ;
 int lan743x_tx_release_all_descriptors (struct lan743x_tx*) ;
 int lan743x_tx_ring_cleanup (struct lan743x_tx*) ;
 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void lan743x_tx_close(struct lan743x_tx *tx)
{
 struct lan743x_adapter *adapter = tx->adapter;

 lan743x_csr_write(adapter,
     DMAC_CMD,
     DMAC_CMD_STOP_T_(tx->channel_number));
 lan743x_dmac_tx_wait_till_stopped(adapter, tx->channel_number);

 lan743x_csr_write(adapter,
     DMAC_INT_EN_CLR,
     DMAC_INT_BIT_TX_IOC_(tx->channel_number));
 lan743x_csr_write(adapter, INT_EN_CLR,
     INT_BIT_DMA_TX_(tx->channel_number));
 napi_disable(&tx->napi);
 netif_napi_del(&tx->napi);

 lan743x_csr_write(adapter, FCT_TX_CTL,
     FCT_TX_CTL_DIS_(tx->channel_number));
 lan743x_csr_wait_for_bit(adapter, FCT_TX_CTL,
     FCT_TX_CTL_EN_(tx->channel_number),
     0, 1000, 20000, 100);

 lan743x_tx_release_all_descriptors(tx);

 if (tx->overflow_skb) {
  dev_kfree_skb(tx->overflow_skb);
  tx->overflow_skb = ((void*)0);
 }

 lan743x_tx_ring_cleanup(tx);
}
