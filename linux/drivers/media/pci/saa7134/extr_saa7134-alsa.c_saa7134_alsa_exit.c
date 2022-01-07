
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_CARDS ;
 int pr_info (char*) ;
 int * saa7134_dmasound_exit ;
 int * saa7134_dmasound_init ;
 int snd_card_free (scalar_t__) ;
 scalar_t__* snd_saa7134_cards ;

__attribute__((used)) static void saa7134_alsa_exit(void)
{
 int idx;

 for (idx = 0; idx < SNDRV_CARDS; idx++) {
  if (snd_saa7134_cards[idx])
   snd_card_free(snd_saa7134_cards[idx]);
 }

 saa7134_dmasound_init = ((void*)0);
 saa7134_dmasound_exit = ((void*)0);
 pr_info("saa7134 ALSA driver for DMA sound unloaded\n");

 return;
}
