
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ users; int shutdown; } ;
struct cx231xx {int wq_trigger; int stream_started; int dev; TYPE_2__ adev; int lock; } ;
struct TYPE_3__ {int * dma_area; } ;


 int Audio ;
 int INDEX_AUDIO ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cx231xx_capture_start (struct cx231xx*,int ,int ) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int ) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 struct cx231xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vfree (int *) ;

__attribute__((used)) static int snd_cx231xx_pcm_close(struct snd_pcm_substream *substream)
{
 int ret;
 struct cx231xx *dev = snd_pcm_substream_chip(substream);

 dev_dbg(dev->dev, "closing device\n");


 mutex_lock(&dev->lock);
 ret = cx231xx_capture_start(dev, 0, Audio);



 ret = cx231xx_set_alt_setting(dev, INDEX_AUDIO, 0);
 if (ret < 0) {
  dev_err(dev->dev,
   "failed to set alternate setting !\n");

  mutex_unlock(&dev->lock);
  return ret;
 }

 dev->adev.users--;
 if (substream->runtime->dma_area) {
  dev_dbg(dev->dev, "freeing\n");
  vfree(substream->runtime->dma_area);
  substream->runtime->dma_area = ((void*)0);
 }
 mutex_unlock(&dev->lock);

 if (dev->adev.users == 0 && dev->adev.shutdown == 1) {
  dev_dbg(dev->dev, "audio users: %d\n", dev->adev.users);
  dev_dbg(dev->dev, "disabling audio stream!\n");
  dev->adev.shutdown = 0;
  dev_dbg(dev->dev, "released lock\n");
  if (atomic_read(&dev->stream_started) > 0) {
   atomic_set(&dev->stream_started, 0);
   schedule_work(&dev->wq_trigger);
  }
 }
 return 0;
}
