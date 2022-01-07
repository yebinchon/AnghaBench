
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {struct tw686x_audio_channel* audio_channels; } ;
struct tw686x_audio_channel {int ptr; } ;
struct snd_pcm_substream {size_t number; int runtime; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (int ,int ) ;
 struct tw686x_dev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t tw686x_pcm_pointer(struct snd_pcm_substream *ss)
{
 struct tw686x_dev *dev = snd_pcm_substream_chip(ss);
 struct tw686x_audio_channel *ac = &dev->audio_channels[ss->number];

 return bytes_to_frames(ss->runtime, ac->ptr);
}
