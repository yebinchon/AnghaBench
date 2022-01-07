
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int * private_free; int * private_data; } ;


 int snd_ivtv_card_free (int *) ;

__attribute__((used)) static void snd_ivtv_card_private_free(struct snd_card *sc)
{
 if (sc == ((void*)0))
  return;
 snd_ivtv_card_free(sc->private_data);
 sc->private_data = ((void*)0);
 sc->private_free = ((void*)0);
}
