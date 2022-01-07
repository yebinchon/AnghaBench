
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* private_data; } ;
struct saa7134_dev {int slock; } ;
struct TYPE_2__ {struct saa7134_dev* dev; } ;
typedef TYPE_1__ snd_card_saa7134_pcm_t ;


 int EINVAL ;
 int SNDRV_PCM_TRIGGER_START ;
 int SNDRV_PCM_TRIGGER_STOP ;
 int saa7134_dma_start (struct saa7134_dev*) ;
 int saa7134_dma_stop (struct saa7134_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_card_saa7134_capture_trigger(struct snd_pcm_substream * substream,
       int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_card_saa7134_pcm_t *pcm = runtime->private_data;
 struct saa7134_dev *dev=pcm->dev;
 int err = 0;

 spin_lock(&dev->slock);
 if (cmd == SNDRV_PCM_TRIGGER_START) {

  saa7134_dma_start(dev);
 } else if (cmd == SNDRV_PCM_TRIGGER_STOP) {

  saa7134_dma_stop(dev);
 } else {
  err = -EINVAL;
 }
 spin_unlock(&dev->slock);

 return err;
}
