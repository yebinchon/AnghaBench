
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_cobalt_card {scalar_t__ alsa_record_cnt; struct cobalt_stream* s; } ;
struct cobalt_stream {int q; } ;


 struct snd_cobalt_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int vb2_thread_stop (int *) ;

__attribute__((used)) static int snd_cobalt_pcm_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_cobalt_card *cobsc = snd_pcm_substream_chip(substream);
 struct cobalt_stream *s = cobsc->s;

 cobsc->alsa_record_cnt--;
 if (cobsc->alsa_record_cnt == 0)
  vb2_thread_stop(&s->q);
 return 0;
}
