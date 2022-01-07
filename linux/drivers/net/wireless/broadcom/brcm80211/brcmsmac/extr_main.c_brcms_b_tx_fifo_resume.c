
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct brcms_hardware {int suspended_fifos; scalar_t__* di; } ;


 int BRCMS_WAKE_OVERRIDE_TXFIFO ;
 int brcms_c_ucode_wake_override_clear (struct brcms_hardware*,int ) ;
 int dma_txresume (scalar_t__) ;

__attribute__((used)) static void brcms_b_tx_fifo_resume(struct brcms_hardware *wlc_hw,
       uint tx_fifo)
{





 if (wlc_hw->di[tx_fifo])
  dma_txresume(wlc_hw->di[tx_fifo]);


 if (wlc_hw->suspended_fifos == 0)
  return;
 else {
  wlc_hw->suspended_fifos &= ~(1 << tx_fifo);
  if (wlc_hw->suspended_fifos == 0)
   brcms_c_ucode_wake_override_clear(wlc_hw,
      BRCMS_WAKE_OVERRIDE_TXFIFO);
 }
}
