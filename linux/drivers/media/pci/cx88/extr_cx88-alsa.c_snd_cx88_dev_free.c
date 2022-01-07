
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct cx88_audio_dev* private_data; } ;
struct cx88_audio_dev {int dummy; } ;


 int snd_cx88_free (struct cx88_audio_dev*) ;

__attribute__((used)) static void snd_cx88_dev_free(struct snd_card *card)
{
 struct cx88_audio_dev *chip = card->private_data;

 snd_cx88_free(chip);
}
