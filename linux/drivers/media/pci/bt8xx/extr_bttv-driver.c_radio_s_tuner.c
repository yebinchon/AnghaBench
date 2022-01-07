
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;


 int EINVAL ;
 int bttv_call_all (struct bttv*,int ,int ,struct v4l2_tuner const*) ;
 int radio_enable (struct bttv*) ;
 int s_tuner ;
 int tuner ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv,
     const struct v4l2_tuner *t)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (0 != t->index)
  return -EINVAL;

 radio_enable(btv);
 bttv_call_all(btv, tuner, s_tuner, t);
 return 0;
}
