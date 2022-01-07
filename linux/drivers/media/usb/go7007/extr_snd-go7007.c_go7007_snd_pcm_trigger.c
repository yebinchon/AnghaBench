
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct go7007_snd {int capturing; int avail; int w_idx; int hw_ptr; } ;
struct go7007 {struct go7007_snd* snd_context; } ;


 int EINVAL ;


 struct go7007* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int go7007_snd_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct go7007 *go = snd_pcm_substream_chip(substream);
 struct go7007_snd *gosnd = go->snd_context;

 switch (cmd) {
 case 129:


  gosnd->capturing = 1;
  return 0;
 case 128:
  gosnd->hw_ptr = gosnd->w_idx = gosnd->avail = 0;
  gosnd->capturing = 0;
  return 0;
 default:
  return -EINVAL;
 }
}
