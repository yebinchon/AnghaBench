
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_rect {unsigned int width; unsigned int height; scalar_t__ left; scalar_t__ top; } ;
struct v4l2_subdev_selection {struct v4l2_rect r; int target; int which; } ;
struct v4l2_pix_format {unsigned int width; unsigned int height; } ;
struct TYPE_2__ {int source; } ;
struct stm32_dcmi {unsigned int num_of_sd_framesizes; struct dcmi_framesize* sd_framesizes; TYPE_1__ entity; } ;
struct dcmi_framesize {unsigned int width; unsigned int height; } ;


 int ENOIOCTLCMD ;
 int V4L2_SEL_TGT_CROP_BOUNDS ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dcmi_get_sensor_format (struct stm32_dcmi*,struct v4l2_pix_format*) ;
 int get_selection ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_selection*) ;

__attribute__((used)) static int dcmi_get_sensor_bounds(struct stm32_dcmi *dcmi,
      struct v4l2_rect *r)
{
 struct v4l2_subdev_selection bounds = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = V4L2_SEL_TGT_CROP_BOUNDS,
 };
 unsigned int max_width, max_height, max_pixsize;
 struct v4l2_pix_format pix;
 unsigned int i;
 int ret;




 ret = v4l2_subdev_call(dcmi->entity.source, pad, get_selection,
          ((void*)0), &bounds);
 if (!ret)
  *r = bounds.r;
 if (ret != -ENOIOCTLCMD)
  return ret;






 max_width = 0;
 max_height = 0;
 max_pixsize = 0;
 for (i = 0; i < dcmi->num_of_sd_framesizes; i++) {
  struct dcmi_framesize *fsize = &dcmi->sd_framesizes[i];
  unsigned int pixsize = fsize->width * fsize->height;

  if (pixsize > max_pixsize) {
   max_pixsize = pixsize;
   max_width = fsize->width;
   max_height = fsize->height;
  }
 }
 if (max_pixsize > 0) {
  r->top = 0;
  r->left = 0;
  r->width = max_width;
  r->height = max_height;
  return 0;
 }





 ret = dcmi_get_sensor_format(dcmi, &pix);
 if (ret)
  return ret;

 r->top = 0;
 r->left = 0;
 r->width = pix.width;
 r->height = pix.height;

 return 0;
}
