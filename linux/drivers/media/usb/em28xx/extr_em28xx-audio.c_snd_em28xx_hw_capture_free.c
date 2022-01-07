
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct em28xx_audio {int wq_trigger; int stream_started; } ;
struct em28xx {struct em28xx_audio adev; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dprintk (char*) ;
 int schedule_work (int *) ;
 struct em28xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_em28xx_hw_capture_free(struct snd_pcm_substream *substream)
{
 struct em28xx *dev = snd_pcm_substream_chip(substream);
 struct em28xx_audio *adev = &dev->adev;

 dprintk("Stop capture, if needed\n");

 if (atomic_read(&adev->stream_started) > 0) {
  atomic_set(&adev->stream_started, 0);
  schedule_work(&adev->wq_trigger);
 }

 return 0;
}
