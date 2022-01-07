
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {struct snd_tm6000_card* adev; } ;
struct snd_tm6000_card {int * card; } ;


 int kfree (struct snd_tm6000_card*) ;
 int snd_card_free (int *) ;

__attribute__((used)) static int tm6000_audio_fini(struct tm6000_core *dev)
{
 struct snd_tm6000_card *chip;

 if (!dev)
  return 0;
 chip = dev->adev;

 if (!chip)
  return 0;

 if (!chip->card)
  return 0;

 snd_card_free(chip->card);
 chip->card = ((void*)0);
 kfree(chip);
 dev->adev = ((void*)0);

 return 0;
}
