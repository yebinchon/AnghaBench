
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; } ;
struct TYPE_4__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_5__ {int height; int width; scalar_t__ left; scalar_t__ top; } ;
struct rvin_dev {TYPE_2__ crop; TYPE_2__ compose; TYPE_3__ format; int queue; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int rvin_mc_try_format (struct rvin_dev*,TYPE_3__*) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct rvin_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rvin_mc_s_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct rvin_dev *vin = video_drvdata(file);

 if (vb2_is_busy(&vin->queue))
  return -EBUSY;

 rvin_mc_try_format(vin, &f->fmt.pix);

 vin->format = f->fmt.pix;

 vin->crop.top = 0;
 vin->crop.left = 0;
 vin->crop.width = vin->format.width;
 vin->crop.height = vin->format.height;
 vin->compose = vin->crop;

 return 0;
}
