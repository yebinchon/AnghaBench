
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_ring_data {int rdesc_dma; } ;
struct TYPE_2__ {scalar_t__ xmit_more; } ;
struct xgbe_ring {TYPE_1__ tx; int cur; } ;
struct xgbe_prv_data {scalar_t__ tx_usecs; } ;
struct xgbe_channel {int tx_timer_active; int tx_timer; struct xgbe_prv_data* pdata; } ;


 int DMA_CH_TDTR_LO ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,int ) ;
 scalar_t__ jiffies ;
 int lower_32_bits (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void xgbe_tx_start_xmit(struct xgbe_channel *channel,
          struct xgbe_ring *ring)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_ring_data *rdata;


 wmb();



 rdata = XGBE_GET_DESC_DATA(ring, ring->cur);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_TDTR_LO,
     lower_32_bits(rdata->rdesc_dma));


 if (pdata->tx_usecs && !channel->tx_timer_active) {
  channel->tx_timer_active = 1;
  mod_timer(&channel->tx_timer,
     jiffies + usecs_to_jiffies(pdata->tx_usecs));
 }

 ring->tx.xmit_more = 0;
}
