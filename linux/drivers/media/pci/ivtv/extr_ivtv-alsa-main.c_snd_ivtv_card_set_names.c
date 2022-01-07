
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ivtv_card {struct snd_card* sc; int v4l2_dev; } ;
struct snd_card {int longname; int shortname; int driver; } ;
struct ivtv {int instance; char* card_name; } ;


 int snprintf (int ,int,char*,int,...) ;
 int strscpy (int ,char*,int) ;
 struct ivtv* to_ivtv (int ) ;

__attribute__((used)) static int snd_ivtv_card_set_names(struct snd_ivtv_card *itvsc)
{
 struct ivtv *itv = to_ivtv(itvsc->v4l2_dev);
 struct snd_card *sc = itvsc->sc;


 strscpy(sc->driver, "CX2341[56]", sizeof(sc->driver));


 snprintf(sc->shortname, sizeof(sc->shortname), "IVTV-%d",
   itv->instance);


 snprintf(sc->longname, sizeof(sc->longname),
   "CX2341[56] #%d %s TV/FM Radio/Line-In Capture",
   itv->instance, itv->card_name);

 return 0;
}
