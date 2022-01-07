
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hackrf_dev {int urbs_initialized; int urbs_submitted; int dev; int * urb_list; } ;


 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 int hackrf_kill_urbs (struct hackrf_dev*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int hackrf_submit_urbs(struct hackrf_dev *dev)
{
 int i, ret;

 for (i = 0; i < dev->urbs_initialized; i++) {
  dev_dbg(dev->dev, "submit urb=%d\n", i);
  ret = usb_submit_urb(dev->urb_list[i], GFP_KERNEL);
  if (ret) {
   dev_err(dev->dev, "Could not submit URB no. %d - get them all back\n",
     i);
   hackrf_kill_urbs(dev);
   return ret;
  }
  dev->urbs_submitted++;
 }

 return 0;
}
