
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_ivtv_card {scalar_t__ capture_transfer_done; scalar_t__ hwptr_done_capture; } ;


 struct snd_ivtv_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ivtv_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_ivtv_card *itvsc = snd_pcm_substream_chip(substream);

 itvsc->hwptr_done_capture = 0;
 itvsc->capture_transfer_done = 0;

 return 0;
}
