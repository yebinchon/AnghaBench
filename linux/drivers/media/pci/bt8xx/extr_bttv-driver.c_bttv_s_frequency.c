
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;


 int EINVAL ;
 int bttv_set_frequency (struct bttv*,struct v4l2_frequency const*) ;

__attribute__((used)) static int bttv_s_frequency(struct file *file, void *priv,
     const struct v4l2_frequency *f)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (f->tuner)
  return -EINVAL;

 bttv_set_frequency(btv, f);
 return 0;
}
