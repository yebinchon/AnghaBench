
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_selection {scalar_t__ type; int target; int r; } ;
struct file {int dummy; } ;
struct bttv_fh {int do_crop; struct bttv* btv; } ;
struct bttv {size_t tvnorm; TYPE_1__* crop; } ;
struct TYPE_5__ {int bounds; int defrect; } ;
struct TYPE_6__ {TYPE_2__ cropcap; } ;
struct TYPE_4__ {int rect; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OVERLAY ;



 TYPE_3__* bttv_tvnorms ;

__attribute__((used)) static int bttv_g_selection(struct file *file, void *f, struct v4l2_selection *sel)
{
 struct bttv_fh *fh = f;
 struct bttv *btv = fh->btv;

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     sel->type != V4L2_BUF_TYPE_VIDEO_OVERLAY)
  return -EINVAL;

 switch (sel->target) {
 case 130:





  sel->r = btv->crop[!!fh->do_crop].rect;
  break;
 case 128:
  sel->r = bttv_tvnorms[btv->tvnorm].cropcap.defrect;
  break;
 case 129:
  sel->r = bttv_tvnorms[btv->tvnorm].cropcap.bounds;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
