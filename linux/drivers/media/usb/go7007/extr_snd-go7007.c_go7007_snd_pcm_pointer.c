
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct go7007_snd {int hw_ptr; } ;
struct go7007 {struct go7007_snd* snd_context; } ;
typedef int snd_pcm_uframes_t ;


 struct go7007* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t go7007_snd_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct go7007 *go = snd_pcm_substream_chip(substream);
 struct go7007_snd *gosnd = go->snd_context;

 return gosnd->hw_ptr;
}
