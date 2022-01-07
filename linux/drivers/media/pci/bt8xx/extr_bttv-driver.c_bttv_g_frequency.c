
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ type; int frequency; scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int tv_freq; int radio_freq; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int radio_enable (struct bttv*) ;

__attribute__((used)) static int bttv_g_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (f->tuner)
  return -EINVAL;

 if (f->type == V4L2_TUNER_RADIO)
  radio_enable(btv);
 f->frequency = f->type == V4L2_TUNER_RADIO ?
    btv->radio_freq : btv->tv_freq;

 return 0;
}
