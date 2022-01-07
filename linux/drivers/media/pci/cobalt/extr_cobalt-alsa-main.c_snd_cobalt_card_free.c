
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_cobalt_card {TYPE_1__* s; } ;
struct TYPE_2__ {int * alsa; } ;


 int kfree (struct snd_cobalt_card*) ;

__attribute__((used)) static void snd_cobalt_card_free(struct snd_cobalt_card *cobsc)
{
 if (cobsc == ((void*)0))
  return;

 cobsc->s->alsa = ((void*)0);

 kfree(cobsc);
}
