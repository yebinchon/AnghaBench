
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cx18_card {struct snd_card* sc; int v4l2_dev; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct cx18 {int instance; char* card_name; } ;


 int snprintf (int ,int,char*,int,...) ;
 int strscpy (int ,char*,int) ;
 struct cx18* to_cx18 (int ) ;

__attribute__((used)) static int snd_cx18_card_set_names(struct snd_cx18_card *cxsc)
{
 struct cx18 *cx = to_cx18(cxsc->v4l2_dev);
 struct snd_card *sc = cxsc->sc;


 strscpy(sc->driver, "CX23418", sizeof(sc->driver));


 snprintf(sc->shortname, sizeof(sc->shortname), "CX18-%d",
   cx->instance);


 snprintf(sc->longname, sizeof(sc->longname),
   "CX23418 #%d %s TV/FM Radio/Line-In Capture",
   cx->instance, cx->card_name);

 return 0;
}
