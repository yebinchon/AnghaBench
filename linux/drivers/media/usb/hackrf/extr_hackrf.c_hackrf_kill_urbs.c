
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hackrf_dev {int urbs_submitted; int * urb_list; int dev; } ;


 int dev_dbg (int ,char*,int) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int hackrf_kill_urbs(struct hackrf_dev *dev)
{
 int i;

 for (i = dev->urbs_submitted - 1; i >= 0; i--) {
  dev_dbg(dev->dev, "kill urb=%d\n", i);

  usb_kill_urb(dev->urb_list[i]);
 }
 dev->urbs_submitted = 0;

 return 0;
}
