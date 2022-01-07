
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {size_t nr; } ;


 int snd_card_free (int *) ;
 int ** snd_saa7134_cards ;

__attribute__((used)) static int alsa_device_exit(struct saa7134_dev *dev)
{
 if (!snd_saa7134_cards[dev->nr])
  return 1;

 snd_card_free(snd_saa7134_cards[dev->nr]);
 snd_saa7134_cards[dev->nr] = ((void*)0);
 return 1;
}
