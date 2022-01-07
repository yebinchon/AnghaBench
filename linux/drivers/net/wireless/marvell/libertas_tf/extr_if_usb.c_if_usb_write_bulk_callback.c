
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; int actual_length; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int lbtf_deb_usb2 (int *,char*,...) ;
 int pr_info (char*,scalar_t__) ;

__attribute__((used)) static void if_usb_write_bulk_callback(struct urb *urb)
{
 if (urb->status != 0) {

  pr_info("URB in failure status: %d\n", urb->status);
 } else {
  lbtf_deb_usb2(&urb->dev->dev, "URB status is successful\n");
  lbtf_deb_usb2(&urb->dev->dev, "Actual length transmitted %d\n",
        urb->actual_length);
 }
}
