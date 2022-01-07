
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;


 int V4L2_SUBDEV_FORMAT_TRY ;
 int rvin_try_format (struct rvin_dev*,int ,int *,int *,int *) ;
 struct rvin_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rvin_try_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct rvin_dev *vin = video_drvdata(file);

 return rvin_try_format(vin, V4L2_SUBDEV_FORMAT_TRY, &f->fmt.pix, ((void*)0),
          ((void*)0));
}
