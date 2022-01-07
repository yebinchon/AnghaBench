
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; int member_1; } ;
typedef TYPE_1__ u16 ;
struct usbtv {TYPE_3__* snd_bulk_urb; int udev; } ;
struct TYPE_9__ {int * transfer_buffer; } ;


 int ARRAY_SIZE (TYPE_1__ const**) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int USBTV_AUDIO_ENDP ;
 int USBTV_AUDIO_URBSIZE ;

 int * kzalloc (int ,int ) ;
 TYPE_3__* usb_alloc_urb (int ,int ) ;
 int usb_clear_halt (int ,unsigned int) ;
 int usb_fill_bulk_urb (TYPE_3__*,int ,unsigned int,int *,int ,int ,struct usbtv*) ;
 int usb_free_urb (TYPE_3__*) ;
 unsigned int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_3__*,int ) ;
 int usbtv_audio_urb_received ;
 int usbtv_set_regs (struct usbtv*,TYPE_1__ const**,int ) ;

__attribute__((used)) static int usbtv_audio_start(struct usbtv *chip)
{
 unsigned int pipe;
 static const u16 setup[][2] = {

  { 128 + 0x0008, 0x0001 },
  { 128 + 0x01d0, 0x00ff },
  { 128 + 0x01d9, 0x0002 },

  { 128 + 0x01da, 0x0013 },
  { 128 + 0x01db, 0x0012 },
  { 128 + 0x01e9, 0x0002 },
  { 128 + 0x01ec, 0x006c },
  { 128 + 0x0294, 0x0020 },
  { 128 + 0x0255, 0x00cf },
  { 128 + 0x0256, 0x0020 },
  { 128 + 0x01eb, 0x0030 },
  { 128 + 0x027d, 0x00a6 },
  { 128 + 0x0280, 0x0011 },
  { 128 + 0x0281, 0x0040 },
  { 128 + 0x0282, 0x0011 },
  { 128 + 0x0283, 0x0040 },
  { 0xf891, 0x0010 },


  { 128 + 0x0284, 0x00aa },
 };

 chip->snd_bulk_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (chip->snd_bulk_urb == ((void*)0))
  goto err_alloc_urb;

 pipe = usb_rcvbulkpipe(chip->udev, USBTV_AUDIO_ENDP);

 chip->snd_bulk_urb->transfer_buffer = kzalloc(
  USBTV_AUDIO_URBSIZE, GFP_KERNEL);
 if (chip->snd_bulk_urb->transfer_buffer == ((void*)0))
  goto err_transfer_buffer;

 usb_fill_bulk_urb(chip->snd_bulk_urb, chip->udev, pipe,
  chip->snd_bulk_urb->transfer_buffer, USBTV_AUDIO_URBSIZE,
  usbtv_audio_urb_received, chip);


 usbtv_set_regs(chip, setup, ARRAY_SIZE(setup));

 usb_clear_halt(chip->udev, pipe);
 usb_submit_urb(chip->snd_bulk_urb, GFP_ATOMIC);

 return 0;

err_transfer_buffer:
 usb_free_urb(chip->snd_bulk_urb);
 chip->snd_bulk_urb = ((void*)0);

err_alloc_urb:
 return -ENOMEM;
}
