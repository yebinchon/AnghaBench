
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {struct tw686x_audio_channel* audio_channels; } ;
struct tw686x_audio_channel {int * ss; } ;
struct snd_pcm_substream {size_t number; } ;


 struct tw686x_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int tw686x_pcm_close(struct snd_pcm_substream *ss)
{
 struct tw686x_dev *dev = snd_pcm_substream_chip(ss);
 struct tw686x_audio_channel *ac = &dev->audio_channels[ss->number];

 ac->ss = ((void*)0);
 return 0;
}
