
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xmit_more; } ;
struct xlgmac_ring {TYPE_1__ tx; int cur; } ;
struct xlgmac_pdata {scalar_t__ tx_usecs; } ;
struct xlgmac_desc_data {int dma_desc_addr; } ;
struct xlgmac_channel {int tx_timer_active; int tx_timer; struct xlgmac_pdata* pdata; } ;


 int DMA_CH_TDTR_LO ;
 int XLGMAC_DMA_REG (struct xlgmac_channel*,int ) ;
 struct xlgmac_desc_data* XLGMAC_GET_DESC_DATA (struct xlgmac_ring*,int ) ;
 scalar_t__ jiffies ;
 int lower_32_bits (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (scalar_t__) ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static void xlgmac_tx_start_xmit(struct xlgmac_channel *channel,
     struct xlgmac_ring *ring)
{
 struct xlgmac_pdata *pdata = channel->pdata;
 struct xlgmac_desc_data *desc_data;


 wmb();




 desc_data = XLGMAC_GET_DESC_DATA(ring, ring->cur);
 writel(lower_32_bits(desc_data->dma_desc_addr),
        XLGMAC_DMA_REG(channel, DMA_CH_TDTR_LO));


 if (pdata->tx_usecs && !channel->tx_timer_active) {
  channel->tx_timer_active = 1;
  mod_timer(&channel->tx_timer,
     jiffies + usecs_to_jiffies(pdata->tx_usecs));
 }

 ring->tx.xmit_more = 0;
}
