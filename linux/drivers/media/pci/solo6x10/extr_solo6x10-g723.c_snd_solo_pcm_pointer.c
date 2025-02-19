
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_snd_pcm {struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int G723_FRAMES_PER_PAGE ;
 int SOLO_AUDIO_STA ;
 struct solo_snd_pcm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int solo_reg_read (struct solo_dev*,int ) ;

__attribute__((used)) static snd_pcm_uframes_t snd_solo_pcm_pointer(struct snd_pcm_substream *ss)
{
 struct solo_snd_pcm *solo_pcm = snd_pcm_substream_chip(ss);
 struct solo_dev *solo_dev = solo_pcm->solo_dev;
 snd_pcm_uframes_t idx = solo_reg_read(solo_dev, SOLO_AUDIO_STA) & 0x1f;

 return idx * G723_FRAMES_PER_PAGE;
}
