
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm {int name; struct cx23885_audio_dev* private_data; } ;
struct cx23885_audio_dev {int card; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_cx23885_pcm_ops ;
 int snd_pcm_new (int ,char*,int,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int snd_cx23885_pcm(struct cx23885_audio_dev *chip, int device,
 char *name)
{
 int err;
 struct snd_pcm *pcm;

 err = snd_pcm_new(chip->card, name, device, 0, 1, &pcm);
 if (err < 0)
  return err;
 pcm->private_data = chip;
 strscpy(pcm->name, name, sizeof(pcm->name));
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_cx23885_pcm_ops);

 return 0;
}
