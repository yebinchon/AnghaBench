
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cobalt_card {int sc; } ;
struct cobalt_stream {struct snd_cobalt_card* alsa; } ;


 int snd_card_free (int ) ;

void cobalt_alsa_exit(struct cobalt_stream *s)
{
 struct snd_cobalt_card *cobsc = s->alsa;

 if (cobsc)
  snd_card_free(cobsc->sc);
 s->alsa = ((void*)0);
}
