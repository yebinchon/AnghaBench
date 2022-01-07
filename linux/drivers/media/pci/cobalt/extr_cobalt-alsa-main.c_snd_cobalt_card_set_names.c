
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cobalt_card {struct snd_card* sc; struct cobalt_stream* s; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct cobalt_stream {int video_channel; struct cobalt* cobalt; } ;
struct cobalt {int instance; } ;


 int snprintf (int ,int,char*,int,int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int snd_cobalt_card_set_names(struct snd_cobalt_card *cobsc)
{
 struct cobalt_stream *s = cobsc->s;
 struct cobalt *cobalt = s->cobalt;
 struct snd_card *sc = cobsc->sc;


 strscpy(sc->driver, "cobalt", sizeof(sc->driver));


 snprintf(sc->shortname, sizeof(sc->shortname), "cobalt-%d-%d",
   cobalt->instance, s->video_channel);


 snprintf(sc->longname, sizeof(sc->longname),
   "Cobalt %d HDMI %d",
   cobalt->instance, s->video_channel);

 return 0;
}
