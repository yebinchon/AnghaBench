
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm {int name; scalar_t__ info_flags; TYPE_1__* private_data; } ;
struct TYPE_3__ {int card; } ;
typedef TYPE_1__ snd_card_saa7134_t ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int snd_card_saa7134_capture_ops ;
 int snd_pcm_new (int ,char*,int,int ,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int snd_card_saa7134_pcm(snd_card_saa7134_t *saa7134, int device)
{
 struct snd_pcm *pcm;
 int err;

 if ((err = snd_pcm_new(saa7134->card, "SAA7134 PCM", device, 0, 1, &pcm)) < 0)
  return err;
 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_card_saa7134_capture_ops);
 pcm->private_data = saa7134;
 pcm->info_flags = 0;
 strscpy(pcm->name, "SAA7134 PCM", sizeof(pcm->name));
 return 0;
}
