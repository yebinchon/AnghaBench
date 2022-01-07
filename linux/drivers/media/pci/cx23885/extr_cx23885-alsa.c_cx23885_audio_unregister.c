
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {struct cx23885_audio_dev* audio_dev; } ;
struct cx23885_audio_dev {int card; } ;


 int snd_card_free (int ) ;

void cx23885_audio_unregister(struct cx23885_dev *dev)
{
 struct cx23885_audio_dev *chip = dev->audio_dev;

 snd_card_free(chip->card);
}
