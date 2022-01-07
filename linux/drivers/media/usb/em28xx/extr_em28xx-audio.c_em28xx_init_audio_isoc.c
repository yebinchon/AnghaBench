
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_urb; int stream_started; TYPE_3__** urb; int * transfer_buffer; } ;
struct em28xx {TYPE_2__ adev; TYPE_1__* intf; } ;
struct TYPE_6__ {int transfer_buffer_length; } ;
struct TYPE_4__ {int dev; } ;


 int GFP_ATOMIC ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,int) ;
 int dprintk (char*) ;
 int em28xx_deinit_isoc_audio (struct em28xx*) ;
 int memset (int ,int,int ) ;
 int usb_submit_urb (TYPE_3__*,int ) ;

__attribute__((used)) static int em28xx_init_audio_isoc(struct em28xx *dev)
{
 int i, err;

 dprintk("Starting isoc transfers\n");


 for (i = 0; i < dev->adev.num_urb; i++) {
  memset(dev->adev.transfer_buffer[i], 0x80,
         dev->adev.urb[i]->transfer_buffer_length);

  err = usb_submit_urb(dev->adev.urb[i], GFP_ATOMIC);
  if (err) {
   dev_err(&dev->intf->dev,
    "submit of audio urb failed (error=%i)\n",
    err);
   em28xx_deinit_isoc_audio(dev);
   atomic_set(&dev->adev.stream_started, 0);
   return err;
  }
 }

 return 0;
}
