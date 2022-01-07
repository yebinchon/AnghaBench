
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int periods; } ;
struct cx88_audio_dev {int count; } ;
typedef int snd_pcm_uframes_t ;


 int atomic_read (int *) ;
 struct cx88_audio_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_cx88_pointer(struct snd_pcm_substream *substream)
{
 struct cx88_audio_dev *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 u16 count;

 count = atomic_read(&chip->count);




 return runtime->period_size * (count & (runtime->periods - 1));
}
