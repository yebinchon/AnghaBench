
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cobalt_card {struct snd_card* sc; struct cobalt_stream* s; } ;
struct snd_card {int private_free; struct snd_cobalt_card* private_data; } ;
struct cobalt_stream {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_cobalt_card* kzalloc (int,int ) ;
 int snd_cobalt_card_private_free ;

__attribute__((used)) static int snd_cobalt_card_create(struct cobalt_stream *s,
           struct snd_card *sc,
           struct snd_cobalt_card **cobsc)
{
 *cobsc = kzalloc(sizeof(struct snd_cobalt_card), GFP_KERNEL);
 if (*cobsc == ((void*)0))
  return -ENOMEM;

 (*cobsc)->s = s;
 (*cobsc)->sc = sc;

 sc->private_data = *cobsc;
 sc->private_free = snd_cobalt_card_private_free;

 return 0;
}
