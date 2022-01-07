
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_2__ {int source; } ;
struct stm32_dcmi {TYPE_1__ entity; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int pad ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int dcmi_get_sensor_format(struct stm32_dcmi *dcmi,
      struct v4l2_pix_format *pix)
{
 struct v4l2_subdev_format fmt = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 ret = v4l2_subdev_call(dcmi->entity.source, pad, get_fmt, ((void*)0), &fmt);
 if (ret)
  return ret;

 v4l2_fill_pix_format(pix, &fmt.format);

 return 0;
}
