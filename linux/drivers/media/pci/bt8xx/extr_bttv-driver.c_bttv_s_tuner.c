
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int (* audio_mode_gpio ) (struct bttv*,struct v4l2_tuner*,int) ;} ;


 int EINVAL ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_tuner const*) ;
 int s_tuner ;
 int stub1 (struct bttv*,struct v4l2_tuner*,int) ;
 int tuner ;

__attribute__((used)) static int bttv_s_tuner(struct file *file, void *priv,
     const struct v4l2_tuner *t)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (t->index)
  return -EINVAL;

 bttv_call_all(btv, tuner, s_tuner, t);

 if (btv->audio_mode_gpio) {
  struct v4l2_tuner copy = *t;

  btv->audio_mode_gpio(btv, &copy, 1);
 }
 return 0;
}
