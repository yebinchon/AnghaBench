
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_rx {int napi; int channel_number; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {int dummy; } ;


 int DMAC_CMD ;
 int DMAC_CMD_STOP_R_ (int ) ;
 int DMAC_INT_BIT_RXFRM_ (int ) ;
 int DMAC_INT_EN_CLR ;
 int FCT_RX_CTL ;
 int FCT_RX_CTL_DIS_ (int ) ;
 int FCT_RX_CTL_EN_ (int ) ;
 int INT_BIT_DMA_RX_ (int ) ;
 int INT_EN_CLR ;
 int lan743x_csr_wait_for_bit (struct lan743x_adapter*,int ,int ,int ,int,int,int) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;
 int lan743x_dmac_rx_wait_till_stopped (struct lan743x_adapter*,int ) ;
 int lan743x_rx_ring_cleanup (struct lan743x_rx*) ;
 int napi_disable (int *) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void lan743x_rx_close(struct lan743x_rx *rx)
{
 struct lan743x_adapter *adapter = rx->adapter;

 lan743x_csr_write(adapter, FCT_RX_CTL,
     FCT_RX_CTL_DIS_(rx->channel_number));
 lan743x_csr_wait_for_bit(adapter, FCT_RX_CTL,
     FCT_RX_CTL_EN_(rx->channel_number),
     0, 1000, 20000, 100);

 lan743x_csr_write(adapter, DMAC_CMD,
     DMAC_CMD_STOP_R_(rx->channel_number));
 lan743x_dmac_rx_wait_till_stopped(adapter, rx->channel_number);

 lan743x_csr_write(adapter, DMAC_INT_EN_CLR,
     DMAC_INT_BIT_RXFRM_(rx->channel_number));
 lan743x_csr_write(adapter, INT_EN_CLR,
     INT_BIT_DMA_RX_(rx->channel_number));
 napi_disable(&rx->napi);

 netif_napi_del(&rx->napi);

 lan743x_rx_ring_cleanup(rx);
}
