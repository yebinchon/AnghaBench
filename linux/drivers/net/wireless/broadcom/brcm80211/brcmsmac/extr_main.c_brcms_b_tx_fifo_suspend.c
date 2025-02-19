
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct brcms_hardware {int suspended_fifos; int wlc; int band; scalar_t__* di; } ;


 scalar_t__ BRCMS_PHY_11N_CAP (int ) ;
 int BRCMS_WAKE_OVERRIDE_TXFIFO ;
 int brcms_c_enable_mac (int ) ;
 int brcms_c_suspend_mac_and_wait (int ) ;
 int brcms_c_ucode_wake_override_set (struct brcms_hardware*,int ) ;
 int dma_txsuspend (scalar_t__) ;

__attribute__((used)) static void brcms_b_tx_fifo_suspend(struct brcms_hardware *wlc_hw,
        uint tx_fifo)
{
 u8 fifo = 1 << tx_fifo;




 if ((wlc_hw->suspended_fifos & fifo) == fifo)
  return;


 if (wlc_hw->suspended_fifos == 0)
  brcms_c_ucode_wake_override_set(wlc_hw,
      BRCMS_WAKE_OVERRIDE_TXFIFO);

 wlc_hw->suspended_fifos |= fifo;

 if (wlc_hw->di[tx_fifo]) {





  if (BRCMS_PHY_11N_CAP(wlc_hw->band))
   brcms_c_suspend_mac_and_wait(wlc_hw->wlc);

  dma_txsuspend(wlc_hw->di[tx_fifo]);

  if (BRCMS_PHY_11N_CAP(wlc_hw->band))
   brcms_c_enable_mac(wlc_hw->wlc);
 }
}
