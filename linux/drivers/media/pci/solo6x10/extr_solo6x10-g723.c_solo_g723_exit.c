
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int * snd_card; } ;


 int SOLO_AUDIO_CONTROL ;
 int SOLO_IRQ_G723 ;
 int snd_card_free (int *) ;
 int solo_irq_off (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

void solo_g723_exit(struct solo_dev *solo_dev)
{
 if (!solo_dev->snd_card)
  return;

 solo_reg_write(solo_dev, SOLO_AUDIO_CONTROL, 0);
 solo_irq_off(solo_dev, SOLO_IRQ_G723);

 snd_card_free(solo_dev->snd_card);
 solo_dev->snd_card = ((void*)0);
}
