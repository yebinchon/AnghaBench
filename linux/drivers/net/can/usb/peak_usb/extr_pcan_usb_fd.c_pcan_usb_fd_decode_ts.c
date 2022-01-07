
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pucan_msg {int dummy; } ;
struct pcan_usb_fd_if {scalar_t__ cm_ignore_count; int time_ref; } ;
struct pcan_ufd_ts_msg {int ts_low; } ;


 int le32_to_cpu (int ) ;
 int peak_usb_set_ts_now (int *,int ) ;

__attribute__((used)) static void pcan_usb_fd_decode_ts(struct pcan_usb_fd_if *usb_if,
      struct pucan_msg *rx_msg)
{
 struct pcan_ufd_ts_msg *ts = (struct pcan_ufd_ts_msg *)rx_msg;


 if (usb_if->cm_ignore_count > 0)
  usb_if->cm_ignore_count--;
 else
  peak_usb_set_ts_now(&usb_if->time_ref, le32_to_cpu(ts->ts_low));
}
