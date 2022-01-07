
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi2500_dev {TYPE_1__** urbs; int udev; int dev; } ;
struct TYPE_2__ {int transfer_dma; scalar_t__ transfer_buffer; int transfer_buffer_length; } ;


 int MAX_ISO_BUFS ;
 int dev_dbg (int ,char*) ;
 int usb_free_coherent (int ,int ,scalar_t__,int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static void msi2500_iso_free(struct msi2500_dev *dev)
{
 int i;

 dev_dbg(dev->dev, "\n");


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  if (dev->urbs[i]) {
   dev_dbg(dev->dev, "Freeing URB\n");
   if (dev->urbs[i]->transfer_buffer) {
    usb_free_coherent(dev->udev,
     dev->urbs[i]->transfer_buffer_length,
     dev->urbs[i]->transfer_buffer,
     dev->urbs[i]->transfer_dma);
   }
   usb_free_urb(dev->urbs[i]);
   dev->urbs[i] = ((void*)0);
  }
 }
}
