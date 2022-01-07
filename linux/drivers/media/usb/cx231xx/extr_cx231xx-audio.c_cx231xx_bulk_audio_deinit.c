
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** transfer_buffer; int ** urb; } ;
struct cx231xx {TYPE_1__ adev; int dev; } ;


 int CX231XX_AUDIO_BUFS ;
 int dev_dbg (int ,char*) ;
 int irqs_disabled () ;
 int kfree (int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;
 int usb_unlink_urb (int *) ;

__attribute__((used)) static int cx231xx_bulk_audio_deinit(struct cx231xx *dev)
{
 int i;

 dev_dbg(dev->dev, "Stopping bulk\n");

 for (i = 0; i < CX231XX_AUDIO_BUFS; i++) {
  if (dev->adev.urb[i]) {
   if (!irqs_disabled())
    usb_kill_urb(dev->adev.urb[i]);
   else
    usb_unlink_urb(dev->adev.urb[i]);

   usb_free_urb(dev->adev.urb[i]);
   dev->adev.urb[i] = ((void*)0);

   kfree(dev->adev.transfer_buffer[i]);
   dev->adev.transfer_buffer[i] = ((void*)0);
  }
 }

 return 0;
}
