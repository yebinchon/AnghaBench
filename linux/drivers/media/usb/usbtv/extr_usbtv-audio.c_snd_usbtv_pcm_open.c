
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {struct snd_pcm_substream* snd_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;


 struct usbtv* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_usbtv_digital_hw ;

__attribute__((used)) static int snd_usbtv_pcm_open(struct snd_pcm_substream *substream)
{
 struct usbtv *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 chip->snd_substream = substream;
 runtime->hw = snd_usbtv_digital_hw;

 return 0;
}
