
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi2500_dev {scalar_t__* urbs; int dev; } ;


 int MAX_ISO_BUFS ;
 int dev_dbg (int ,char*,...) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void msi2500_iso_stop(struct msi2500_dev *dev)
{
 int i;

 dev_dbg(dev->dev, "\n");


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  if (dev->urbs[i]) {
   dev_dbg(dev->dev, "Unlinking URB %p\n", dev->urbs[i]);
   usb_kill_urb(dev->urbs[i]);
  }
 }
}
