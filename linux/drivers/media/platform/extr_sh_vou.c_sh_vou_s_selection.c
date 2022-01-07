
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; scalar_t__ width; unsigned int height; int colorspace; int field; } ;
struct TYPE_3__ {scalar_t__ width; unsigned int height; } ;
struct v4l2_subdev_selection {scalar_t__ target; TYPE_2__ format; TYPE_1__ r; int which; } ;
struct v4l2_subdev_format {scalar_t__ target; TYPE_2__ format; TYPE_1__ r; int which; } ;
struct v4l2_rect {scalar_t__ width; unsigned int height; scalar_t__ left; unsigned int top; } ;
struct v4l2_selection {scalar_t__ type; scalar_t__ target; struct v4l2_rect r; } ;
struct v4l2_pix_format {int height; int width; } ;
struct sh_vou_geometry {int scale_idx_v; int scale_idx_h; int in_height; int in_width; struct v4l2_rect output; } ;
struct sh_vou_device {int std; int pix_idx; struct v4l2_rect rect; int v4l2_dev; int queue; struct v4l2_pix_format pix; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 scalar_t__ MEDIA_BUS_FMT_YUYV8_2X8 ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 int V4L2_STD_525_60 ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 scalar_t__ VOU_MAX_IMAGE_WIDTH ;
 int VOU_MIN_IMAGE_HEIGHT ;
 int VOU_MIN_IMAGE_WIDTH ;
 int pad ;
 int set_fmt ;
 int set_selection ;
 int sh_vou_configure_geometry (struct sh_vou_device*,int ,int ,int ) ;
 int v4l2_device_call_until_err (int *,int ,int ,int ,int *,struct v4l2_subdev_selection*) ;
 int v4l_bound_align_image (scalar_t__*,int ,scalar_t__,int,unsigned int*,int ,unsigned int,int,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct sh_vou_device* video_drvdata (struct file*) ;
 int vou_adjust_input (struct sh_vou_geometry*,int) ;

__attribute__((used)) static int sh_vou_s_selection(struct file *file, void *fh,
         struct v4l2_selection *sel)
{
 struct v4l2_rect *rect = &sel->r;
 struct sh_vou_device *vou_dev = video_drvdata(file);
 struct v4l2_subdev_selection sd_sel = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
  .target = V4L2_SEL_TGT_COMPOSE,
 };
 struct v4l2_pix_format *pix = &vou_dev->pix;
 struct sh_vou_geometry geo;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,

  .format.code = MEDIA_BUS_FMT_YUYV8_2X8,
  .format.field = V4L2_FIELD_INTERLACED,
  .format.colorspace = V4L2_COLORSPACE_SMPTE170M,
 };
 unsigned int img_height_max;
 int ret;

 if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT ||
     sel->target != V4L2_SEL_TGT_COMPOSE)
  return -EINVAL;

 if (vb2_is_busy(&vou_dev->queue))
  return -EBUSY;

 if (vou_dev->std & V4L2_STD_525_60)
  img_height_max = 480;
 else
  img_height_max = 576;

 v4l_bound_align_image(&rect->width,
         VOU_MIN_IMAGE_WIDTH, VOU_MAX_IMAGE_WIDTH, 1,
         &rect->height,
         VOU_MIN_IMAGE_HEIGHT, img_height_max, 1, 0);

 if (rect->width + rect->left > VOU_MAX_IMAGE_WIDTH)
  rect->left = VOU_MAX_IMAGE_WIDTH - rect->width;

 if (rect->height + rect->top > img_height_max)
  rect->top = img_height_max - rect->height;

 geo.output = *rect;
 geo.in_width = pix->width;
 geo.in_height = pix->height;


 sd_sel.r.width = geo.output.width;
 sd_sel.r.height = geo.output.height;




 v4l2_device_call_until_err(&vou_dev->v4l2_dev, 0, pad,
       set_selection, ((void*)0), &sd_sel);
 format.format.width = geo.output.width;
 format.format.height = geo.output.height;
 ret = v4l2_device_call_until_err(&vou_dev->v4l2_dev, 0, pad,
      set_fmt, ((void*)0), &format);

 if (ret < 0)
  return ret;


 if ((unsigned)format.format.width > VOU_MAX_IMAGE_WIDTH ||
     (unsigned)format.format.height > img_height_max ||
     format.format.code != MEDIA_BUS_FMT_YUYV8_2X8)
  return -EIO;

 geo.output.width = format.format.width;
 geo.output.height = format.format.height;





 vou_adjust_input(&geo, vou_dev->std);


 vou_dev->rect = geo.output;
 pix->width = geo.in_width;
 pix->height = geo.in_height;

 sh_vou_configure_geometry(vou_dev, vou_dev->pix_idx,
      geo.scale_idx_h, geo.scale_idx_v);

 return 0;
}
