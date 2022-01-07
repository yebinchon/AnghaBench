
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int wq_trigger; int stream_started; } ;
struct snd_tm6000_card {struct tm6000_core* core; } ;
struct snd_pcm_substream {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dsp_buffer_free (struct snd_pcm_substream*) ;
 int schedule_work (int *) ;
 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_tm6000_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);
 struct tm6000_core *core = chip->core;

 if (atomic_read(&core->stream_started) > 0) {
  atomic_set(&core->stream_started, 0);
  schedule_work(&core->wq_trigger);
 }

 dsp_buffer_free(substream);
 return 0;
}
