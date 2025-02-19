
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_hw_freq_seek {int dummy; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int tea; scalar_t__ has_tea575x; } ;


 int ENOTTY ;
 int snd_tea575x_s_hw_freq_seek (struct file*,int *,struct v4l2_hw_freq_seek const*) ;

__attribute__((used)) static int radio_s_hw_freq_seek(struct file *file, void *priv,
     const struct v4l2_hw_freq_seek *a)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (btv->has_tea575x)
  return snd_tea575x_s_hw_freq_seek(file, &btv->tea, a);

 return -ENOTTY;
}
