
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev_format {int format; int pad; int which; } ;
struct TYPE_6__ {int height; int width; scalar_t__ left; scalar_t__ top; } ;
struct TYPE_7__ {int height; int width; } ;
struct rvin_dev {TYPE_2__ source; TYPE_2__ compose; TYPE_2__ crop; TYPE_3__ format; TYPE_1__* parallel; } ;
struct TYPE_5__ {int source_pad; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int pad ;
 int rvin_format_align (struct rvin_dev*,TYPE_3__*) ;
 int v4l2_fill_pix_format (TYPE_3__*,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;
 int vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_reset_format(struct rvin_dev *vin)
{
 struct v4l2_subdev_format fmt = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .pad = vin->parallel->source_pad,
 };
 int ret;

 ret = v4l2_subdev_call(vin_to_source(vin), pad, get_fmt, ((void*)0), &fmt);
 if (ret)
  return ret;

 v4l2_fill_pix_format(&vin->format, &fmt.format);

 rvin_format_align(vin, &vin->format);

 vin->source.top = 0;
 vin->source.left = 0;
 vin->source.width = vin->format.width;
 vin->source.height = vin->format.height;

 vin->crop = vin->source;
 vin->compose = vin->source;

 return 0;
}
