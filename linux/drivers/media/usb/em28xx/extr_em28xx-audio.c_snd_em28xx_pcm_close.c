
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_3__ {int wq_trigger; int stream_started; int users; } ;
struct em28xx {int mute; int ref; int lock; TYPE_1__ adev; } ;
struct TYPE_4__ {int * dma_area; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dprintk (char*) ;
 int em28xx_audio_analog_set (struct em28xx*) ;
 int em28xx_free_device ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct em28xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vfree (int *) ;

__attribute__((used)) static int snd_em28xx_pcm_close(struct snd_pcm_substream *substream)
{
 struct em28xx *dev = snd_pcm_substream_chip(substream);

 dprintk("closing device\n");

 dev->mute = 1;
 mutex_lock(&dev->lock);
 dev->adev.users--;
 if (atomic_read(&dev->adev.stream_started) > 0) {
  atomic_set(&dev->adev.stream_started, 0);
  schedule_work(&dev->adev.wq_trigger);
 }

 em28xx_audio_analog_set(dev);
 if (substream->runtime->dma_area) {
  dprintk("freeing\n");
  vfree(substream->runtime->dma_area);
  substream->runtime->dma_area = ((void*)0);
 }
 mutex_unlock(&dev->lock);
 kref_put(&dev->ref, em28xx_free_device);

 return 0;
}
