
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {struct tw686x_audio_channel* audio_channels; } ;
struct tw686x_audio_channel {struct snd_pcm_substream* ss; } ;
struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;


 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct tw686x_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int tw686x_capture_hw ;

__attribute__((used)) static int tw686x_pcm_open(struct snd_pcm_substream *ss)
{
 struct tw686x_dev *dev = snd_pcm_substream_chip(ss);
 struct tw686x_audio_channel *ac = &dev->audio_channels[ss->number];
 struct snd_pcm_runtime *rt = ss->runtime;
 int err;

 ac->ss = ss;
 rt->hw = tw686x_capture_hw;

 err = snd_pcm_hw_constraint_integer(rt, SNDRV_PCM_HW_PARAM_PERIODS);
 if (err < 0)
  return err;

 return 0;
}
