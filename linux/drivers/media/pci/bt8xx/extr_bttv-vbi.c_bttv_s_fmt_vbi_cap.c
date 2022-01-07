
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* start; } ;
struct TYPE_5__ {TYPE_4__ vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct bttv_tvnorm {int* vbistart; } ;
struct TYPE_7__ {int vb_lock; } ;
struct TYPE_6__ {int end; struct bttv_tvnorm const* tvnorm; TYPE_4__ fmt; } ;
struct bttv_fh {int resources; TYPE_3__ vbi; TYPE_2__ vbi_fmt; struct bttv* btv; } ;
struct bttv {size_t tvnorm; int lock; int crop_start; } ;
typedef int __s32 ;


 int EBUSY ;
 int RESOURCE_VBI ;
 struct bttv_tvnorm* bttv_tvnorms ;
 int max (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int try_fmt (TYPE_4__*,struct bttv_tvnorm const*,int ) ;

int bttv_s_fmt_vbi_cap(struct file *file, void *f, struct v4l2_format *frt)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;
 const struct bttv_tvnorm *tvnorm;
 __s32 start1, end;
 int rc;

 mutex_lock(&btv->lock);

 rc = -EBUSY;
 if (fh->resources & RESOURCE_VBI)
  goto fail;

 tvnorm = &bttv_tvnorms[btv->tvnorm];

 rc = try_fmt(&frt->fmt.vbi, tvnorm, btv->crop_start);
 if (0 != rc)
  goto fail;

 start1 = frt->fmt.vbi.start[1] - tvnorm->vbistart[1] +
  tvnorm->vbistart[0];







 end = max(frt->fmt.vbi.start[0], start1) * 2 + 2;

 mutex_lock(&fh->vbi.vb_lock);

 fh->vbi_fmt.fmt = frt->fmt.vbi;
 fh->vbi_fmt.tvnorm = tvnorm;
 fh->vbi_fmt.end = end;

 mutex_unlock(&fh->vbi.vb_lock);

 rc = 0;

 fail:
 mutex_unlock(&btv->lock);

 return rc;
}
