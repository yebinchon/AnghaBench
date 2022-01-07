
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int snd_buffer_pos; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 struct usbtv* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t snd_usbtv_pointer(struct snd_pcm_substream *substream)
{
 struct usbtv *chip = snd_pcm_substream_chip(substream);

 return chip->snd_buffer_pos;
}
