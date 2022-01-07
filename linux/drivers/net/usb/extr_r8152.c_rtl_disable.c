
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct r8152 {TYPE_1__* tx_info; int flags; } ;
struct TYPE_2__ {int urb; } ;


 int FIFO_EMPTY ;
 int MCU_TYPE_PLA ;
 int PLA_OOB_CTRL ;
 int PLA_RCR ;
 int PLA_TCR0 ;
 int RCR_ACPT_ALL ;
 int RTL8152_MAX_TX ;
 int RTL8152_UNPLUG ;
 int TCR0_TX_EMPTY ;
 int ocp_read_byte (struct r8152*,int ,int ) ;
 int ocp_read_dword (struct r8152*,int ,int ) ;
 int ocp_read_word (struct r8152*,int ,int ) ;
 int ocp_write_dword (struct r8152*,int ,int ,int) ;
 int rtl8152_nic_reset (struct r8152*) ;
 int rtl_drop_queued_tx (struct r8152*) ;
 int rtl_stop_rx (struct r8152*) ;
 int rxdy_gated_en (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_kill_urb (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rtl_disable(struct r8152 *tp)
{
 u32 ocp_data;
 int i;

 if (test_bit(RTL8152_UNPLUG, &tp->flags)) {
  rtl_drop_queued_tx(tp);
  return;
 }

 ocp_data = ocp_read_dword(tp, MCU_TYPE_PLA, PLA_RCR);
 ocp_data &= ~RCR_ACPT_ALL;
 ocp_write_dword(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);

 rtl_drop_queued_tx(tp);

 for (i = 0; i < RTL8152_MAX_TX; i++)
  usb_kill_urb(tp->tx_info[i].urb);

 rxdy_gated_en(tp, 1);

 for (i = 0; i < 1000; i++) {
  ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
  if ((ocp_data & FIFO_EMPTY) == FIFO_EMPTY)
   break;
  usleep_range(1000, 2000);
 }

 for (i = 0; i < 1000; i++) {
  if (ocp_read_word(tp, MCU_TYPE_PLA, PLA_TCR0) & TCR0_TX_EMPTY)
   break;
  usleep_range(1000, 2000);
 }

 rtl_stop_rx(tp);

 rtl8152_nic_reset(tp);
}
