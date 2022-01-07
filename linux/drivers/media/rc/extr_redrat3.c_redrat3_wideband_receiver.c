
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redrat3_dev {int wideband; int dev; int learn_urb; } ;
struct rc_dev {struct redrat3_dev* priv; } ;


 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int redrat3_wideband_receiver(struct rc_dev *rcdev, int enable)
{
 struct redrat3_dev *rr3 = rcdev->priv;
 int ret = 0;

 rr3->wideband = enable != 0;

 if (enable) {
  ret = usb_submit_urb(rr3->learn_urb, GFP_KERNEL);
  if (ret)
   dev_err(rr3->dev, "Failed to submit learning urb: %d",
         ret);
 }

 return ret;
}
