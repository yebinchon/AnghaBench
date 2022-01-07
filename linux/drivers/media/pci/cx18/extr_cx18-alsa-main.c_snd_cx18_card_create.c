
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct snd_cx18_card {struct snd_card* sc; struct v4l2_device* v4l2_dev; } ;
struct snd_card {int private_free; struct snd_cx18_card* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_cx18_card* kzalloc (int,int ) ;
 int snd_cx18_card_private_free ;

__attribute__((used)) static int snd_cx18_card_create(struct v4l2_device *v4l2_dev,
           struct snd_card *sc,
           struct snd_cx18_card **cxsc)
{
 *cxsc = kzalloc(sizeof(struct snd_cx18_card), GFP_KERNEL);
 if (*cxsc == ((void*)0))
  return -ENOMEM;

 (*cxsc)->v4l2_dev = v4l2_dev;
 (*cxsc)->sc = sc;

 sc->private_data = *cxsc;
 sc->private_free = snd_cx18_card_private_free;

 return 0;
}
