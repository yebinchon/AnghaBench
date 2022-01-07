
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bttv_tvnorm {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {size_t tvnorm; int lock; int crop_start; } ;
typedef int __s32 ;


 struct bttv_tvnorm* bttv_tvnorms ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_fmt (int *,struct bttv_tvnorm const*,int ) ;

int bttv_try_fmt_vbi_cap(struct file *file, void *f, struct v4l2_format *frt)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;
 const struct bttv_tvnorm *tvnorm;
 __s32 crop_start;

 mutex_lock(&btv->lock);

 tvnorm = &bttv_tvnorms[btv->tvnorm];
 crop_start = btv->crop_start;

 mutex_unlock(&btv->lock);

 return try_fmt(&frt->fmt.vbi, tvnorm, crop_start);
}
