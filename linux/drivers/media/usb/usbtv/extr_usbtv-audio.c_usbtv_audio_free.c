
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int * snd; scalar_t__ udev; int snd_trigger; } ;


 int cancel_work_sync (int *) ;
 int snd_card_free (int *) ;

void usbtv_audio_free(struct usbtv *usbtv)
{
 cancel_work_sync(&usbtv->snd_trigger);

 if (usbtv->snd && usbtv->udev) {
  snd_card_free(usbtv->snd);
  usbtv->snd = ((void*)0);
 }
}
