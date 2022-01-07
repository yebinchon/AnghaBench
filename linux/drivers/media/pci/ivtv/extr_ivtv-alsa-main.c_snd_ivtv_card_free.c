
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ivtv_card {int * v4l2_dev; } ;
struct TYPE_2__ {int * alsa; } ;


 int kfree (struct snd_ivtv_card*) ;
 TYPE_1__* to_ivtv (int *) ;

__attribute__((used)) static void snd_ivtv_card_free(struct snd_ivtv_card *itvsc)
{
 if (itvsc == ((void*)0))
  return;

 if (itvsc->v4l2_dev != ((void*)0))
  to_ivtv(itvsc->v4l2_dev)->alsa = ((void*)0);



 kfree(itvsc);
}
