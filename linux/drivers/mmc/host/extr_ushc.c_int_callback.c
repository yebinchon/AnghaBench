
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ushc_data {int last_status; int int_urb; int flags; int mmc; TYPE_1__* int_data; } ;
struct urb {scalar_t__ status; struct ushc_data* context; } ;
struct TYPE_2__ {int status; } ;


 int GFP_ATOMIC ;
 int IGNORE_NEXT_INT ;
 int INT_EN ;
 int USHC_INT_STATUS_CARD_PRESENT ;
 int USHC_INT_STATUS_SDIO_INT ;
 int mmc_detect_change (int ,int ) ;
 int mmc_signal_sdio_irq (int ) ;
 int msecs_to_jiffies (int) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void int_callback(struct urb *urb)
{
 struct ushc_data *ushc = urb->context;
 u8 status, last_status;

 if (urb->status < 0)
  return;

 status = ushc->int_data->status;
 last_status = ushc->last_status;
 ushc->last_status = status;
 if (!test_and_clear_bit(IGNORE_NEXT_INT, &ushc->flags)
     && test_bit(INT_EN, &ushc->flags)
     && status & USHC_INT_STATUS_SDIO_INT) {
  mmc_signal_sdio_irq(ushc->mmc);
 }

 if ((status ^ last_status) & USHC_INT_STATUS_CARD_PRESENT)
  mmc_detect_change(ushc->mmc, msecs_to_jiffies(100));

 if (!test_bit(INT_EN, &ushc->flags))
  set_bit(IGNORE_NEXT_INT, &ushc->flags);
 usb_submit_urb(ushc->int_urb, GFP_ATOMIC);
}
