
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct brcms_hardware {scalar_t__* di; } ;
struct brcms_c_info {TYPE_1__* pub; struct brcms_hardware* hw; } ;
struct TYPE_2__ {int ieee_hw; } ;


 int DMA_RANGE_ALL ;
 size_t NFIFO ;
 size_t RX_FIFO ;
 size_t TX_BCMC_FIFO ;
 int brcms_fifo_to_ac (size_t) ;
 int dma_rxreclaim (scalar_t__) ;
 int dma_txreclaim (scalar_t__,int ) ;
 int ieee80211_wake_queue (int ,int ) ;

__attribute__((used)) static void brcms_c_flushqueues(struct brcms_c_info *wlc)
{
 struct brcms_hardware *wlc_hw = wlc->hw;
 uint i;


 for (i = 0; i < NFIFO; i++) {
  if (wlc_hw->di[i]) {
   dma_txreclaim(wlc_hw->di[i], DMA_RANGE_ALL);
   if (i < TX_BCMC_FIFO)
    ieee80211_wake_queue(wlc->pub->ieee_hw,
           brcms_fifo_to_ac(i));
  }
 }


 dma_rxreclaim(wlc_hw->di[RX_FIFO]);
}
