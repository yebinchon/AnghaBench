
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_0; } ;
typedef TYPE_1__ u16 ;
struct usbtv {TYPE_3__* snd_bulk_urb; } ;
struct TYPE_7__ {int transfer_buffer; } ;


 int ARRAY_SIZE (TYPE_1__ const**) ;

 int kfree (int ) ;
 int usb_free_urb (TYPE_3__*) ;
 int usb_kill_urb (TYPE_3__*) ;
 int usbtv_set_regs (struct usbtv*,TYPE_1__ const**,int ) ;

__attribute__((used)) static int usbtv_audio_stop(struct usbtv *chip)
{
 static const u16 setup[][2] = {





  { 128 + 0x027d, 0x0000 },
  { 128 + 0x0280, 0x0010 },
  { 128 + 0x0282, 0x0010 },
 };

 if (chip->snd_bulk_urb) {
  usb_kill_urb(chip->snd_bulk_urb);
  kfree(chip->snd_bulk_urb->transfer_buffer);
  usb_free_urb(chip->snd_bulk_urb);
  chip->snd_bulk_urb = ((void*)0);
 }

 usbtv_set_regs(chip, setup, ARRAY_SIZE(setup));

 return 0;
}
