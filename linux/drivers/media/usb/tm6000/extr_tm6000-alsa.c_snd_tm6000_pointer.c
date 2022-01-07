
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tm6000_card {int buf_pos; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_tm6000_pointer(struct snd_pcm_substream *substream)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);

 return chip->buf_pos;
}
