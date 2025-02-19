
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ height; scalar_t__ width; scalar_t__ colorspace; } ;
struct xvip_dma {TYPE_2__ format; TYPE_1__* fmtinfo; int pad; } ;
struct TYPE_6__ {scalar_t__ code; scalar_t__ height; scalar_t__ width; scalar_t__ colorspace; } ;
struct v4l2_subdev_format {TYPE_3__ format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {scalar_t__ code; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int EPIPE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_format*) ;
 struct v4l2_subdev* xvip_dma_remote_subdev (int *,int *) ;

__attribute__((used)) static int xvip_dma_verify_format(struct xvip_dma *dma)
{
 struct v4l2_subdev_format fmt;
 struct v4l2_subdev *subdev;
 int ret;

 subdev = xvip_dma_remote_subdev(&dma->pad, &fmt.pad);
 if (subdev == ((void*)0))
  return -EPIPE;

 fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 ret = v4l2_subdev_call(subdev, pad, get_fmt, ((void*)0), &fmt);
 if (ret < 0)
  return ret == -ENOIOCTLCMD ? -EINVAL : ret;

 if (dma->fmtinfo->code != fmt.format.code ||
     dma->format.height != fmt.format.height ||
     dma->format.width != fmt.format.width ||
     dma->format.colorspace != fmt.format.colorspace)
  return -EINVAL;

 return 0;
}
