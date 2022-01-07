
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_cobalt_card {int hwptr_done_capture; } ;
typedef int snd_pcm_uframes_t ;


 struct snd_cobalt_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static
snd_pcm_uframes_t snd_cobalt_pcm_pointer(struct snd_pcm_substream *substream)
{
 snd_pcm_uframes_t hwptr_done;
 struct snd_cobalt_card *cobsc = snd_pcm_substream_chip(substream);

 hwptr_done = cobsc->hwptr_done_capture;

 return hwptr_done;
}
