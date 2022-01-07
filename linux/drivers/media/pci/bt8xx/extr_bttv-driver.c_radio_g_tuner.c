
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int tea; scalar_t__ has_tea575x; int (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int ) ;} ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int radio_enable (struct bttv*) ;
 int snd_tea575x_g_tuner (int *,struct v4l2_tuner*) ;
 int strscpy (int ,char*,int) ;
 int stub1 (struct bttv*,struct v4l2_tuner*,int ) ;
 int tuner ;

__attribute__((used)) static int radio_g_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (0 != t->index)
  return -EINVAL;
 strscpy(t->name, "Radio", sizeof(t->name));
 t->type = V4L2_TUNER_RADIO;
 radio_enable(btv);

 bttv_call_all(btv, tuner, g_tuner, t);

 if (btv->audio_mode_gpio)
  btv->audio_mode_gpio(btv, t, 0);

 if (btv->has_tea575x)
  return snd_tea575x_g_tuner(&btv->tea, t);

 return 0;
}
