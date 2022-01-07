
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solo_snd_pcm {int on; TYPE_1__* snd_pcm; } ;
struct solo_dev {int on; TYPE_1__* snd_pcm; } ;
struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm_str {struct snd_pcm_substream* substream; } ;
struct TYPE_2__ {struct snd_pcm_str* streams; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 struct solo_snd_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

void solo_g723_isr(struct solo_dev *solo_dev)
{
 struct snd_pcm_str *pstr =
  &solo_dev->snd_pcm->streams[SNDRV_PCM_STREAM_CAPTURE];
 struct snd_pcm_substream *ss;
 struct solo_snd_pcm *solo_pcm;

 for (ss = pstr->substream; ss != ((void*)0); ss = ss->next) {
  if (snd_pcm_substream_chip(ss) == ((void*)0))
   continue;


  if (snd_pcm_substream_chip(ss) == solo_dev)
   continue;


  solo_pcm = snd_pcm_substream_chip(ss);
  if (!solo_pcm->on)
   continue;

  snd_pcm_period_elapsed(ss);
 }
}
