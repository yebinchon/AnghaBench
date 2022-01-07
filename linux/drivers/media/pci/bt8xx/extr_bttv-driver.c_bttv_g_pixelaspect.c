
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fract {int dummy; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {size_t tvnorm; } ;
struct TYPE_3__ {struct v4l2_fract pixelaspect; } ;
struct TYPE_4__ {TYPE_1__ cropcap; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 TYPE_2__* bttv_tvnorms ;

__attribute__((used)) static int bttv_g_pixelaspect(struct file *file, void *priv,
         int type, struct v4l2_fract *f)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;


 *f = bttv_tvnorms[btv->tvnorm].cropcap.pixelaspect;
 return 0;
}
