
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int csw_urb; int data_urb; } ;
struct urb {scalar_t__ status; struct ushc_data* context; } ;


 int usb_unlink_urb (int ) ;

__attribute__((used)) static void cbw_callback(struct urb *urb)
{
 struct ushc_data *ushc = urb->context;

 if (urb->status != 0) {
  usb_unlink_urb(ushc->data_urb);
  usb_unlink_urb(ushc->csw_urb);
 }
}
