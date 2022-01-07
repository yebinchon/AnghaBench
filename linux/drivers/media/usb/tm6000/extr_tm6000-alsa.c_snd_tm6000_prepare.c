
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_tm6000_card {scalar_t__ period_pos; scalar_t__ buf_pos; } ;
struct snd_pcm_substream {int dummy; } ;


 struct snd_tm6000_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_tm6000_prepare(struct snd_pcm_substream *substream)
{
 struct snd_tm6000_card *chip = snd_pcm_substream_chip(substream);

 chip->buf_pos = 0;
 chip->period_pos = 0;

 return 0;
}
