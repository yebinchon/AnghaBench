
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcan_usb_pro_rxts {int * ts64; } ;
struct pcan_usb_pro_interface {scalar_t__ cm_ignore_count; int time_ref; } ;


 int le32_to_cpu (int ) ;
 int peak_usb_set_ts_now (int *,int ) ;

__attribute__((used)) static void pcan_usb_pro_handle_ts(struct pcan_usb_pro_interface *usb_if,
       struct pcan_usb_pro_rxts *ts)
{

 if (usb_if->cm_ignore_count > 0)
  usb_if->cm_ignore_count--;
 else
  peak_usb_set_ts_now(&usb_if->time_ref,
        le32_to_cpu(ts->ts64[1]));
}
