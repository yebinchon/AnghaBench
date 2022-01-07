
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * sndcard; int wq_trigger; } ;
struct em28xx {scalar_t__ usb_audio_type; int ref; TYPE_2__ adev; TYPE_1__* intf; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ EM28XX_USB_AUDIO_VENDOR ;
 int dev_info (int *,char*) ;
 int em28xx_audio_free_urb (struct em28xx*) ;
 int em28xx_free_device ;
 int flush_work (int *) ;
 int kref_put (int *,int ) ;
 int snd_card_disconnect (int *) ;
 int snd_card_free (int *) ;

__attribute__((used)) static int em28xx_audio_fini(struct em28xx *dev)
{
 if (!dev)
  return 0;

 if (dev->usb_audio_type != EM28XX_USB_AUDIO_VENDOR) {





  return 0;
 }

 dev_info(&dev->intf->dev, "Closing audio extension\n");

 if (dev->adev.sndcard) {
  snd_card_disconnect(dev->adev.sndcard);
  flush_work(&dev->adev.wq_trigger);

  em28xx_audio_free_urb(dev);

  snd_card_free(dev->adev.sndcard);
  dev->adev.sndcard = ((void*)0);
 }

 kref_put(&dev->ref, em28xx_free_device);
 return 0;
}
