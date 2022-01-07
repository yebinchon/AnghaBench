
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dln2_dev {int * rx_urb; TYPE_1__* interface; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct device dev; } ;


 int DLN2_MAX_URBS ;
 int dev_err (struct device*,char*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int dln2_start_rx_urbs(struct dln2_dev *dln2, gfp_t gfp)
{
 struct device *dev = &dln2->interface->dev;
 int ret;
 int i;

 for (i = 0; i < DLN2_MAX_URBS; i++) {
  ret = usb_submit_urb(dln2->rx_urb[i], gfp);
  if (ret < 0) {
   dev_err(dev, "failed to submit RX URB: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
