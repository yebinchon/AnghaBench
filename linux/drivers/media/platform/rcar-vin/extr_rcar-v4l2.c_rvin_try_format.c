
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {void* which; int format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; void* width; scalar_t__ left; scalar_t__ top; } ;
struct v4l2_pix_format {int field; int height; void* width; int pixelformat; } ;
struct rvin_dev {int mbus_code; TYPE_1__* parallel; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {int source_pad; } ;


 int ENOIOCTLCMD ;
 int ENOMEM ;
 int RVIN_DEFAULT_FORMAT ;
 scalar_t__ V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_ANY ;
 int pad ;
 int rvin_format_align (struct rvin_dev*,struct v4l2_pix_format*) ;
 int rvin_format_from_pixel (struct rvin_dev*,int ) ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 struct v4l2_subdev_pad_config* v4l2_subdev_alloc_pad_config (struct v4l2_subdev*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int v4l2_subdev_free_pad_config (struct v4l2_subdev_pad_config*) ;
 struct v4l2_subdev* vin_to_source (struct rvin_dev*) ;

__attribute__((used)) static int rvin_try_format(struct rvin_dev *vin, u32 which,
      struct v4l2_pix_format *pix,
      struct v4l2_rect *crop, struct v4l2_rect *compose)
{
 struct v4l2_subdev *sd = vin_to_source(vin);
 struct v4l2_subdev_pad_config *pad_cfg;
 struct v4l2_subdev_format format = {
  .which = which,
  .pad = vin->parallel->source_pad,
 };
 enum v4l2_field field;
 u32 width, height;
 int ret;

 pad_cfg = v4l2_subdev_alloc_pad_config(sd);
 if (pad_cfg == ((void*)0))
  return -ENOMEM;

 if (!rvin_format_from_pixel(vin, pix->pixelformat))
  pix->pixelformat = RVIN_DEFAULT_FORMAT;

 v4l2_fill_mbus_format(&format.format, pix, vin->mbus_code);


 field = pix->field;
 width = pix->width;
 height = pix->height;

 ret = v4l2_subdev_call(sd, pad, set_fmt, pad_cfg, &format);
 if (ret < 0 && ret != -ENOIOCTLCMD)
  goto done;

 v4l2_fill_pix_format(pix, &format.format);

 if (crop) {
  crop->top = 0;
  crop->left = 0;
  crop->width = pix->width;
  crop->height = pix->height;





  if (pix->field == V4L2_FIELD_ALTERNATE)
   crop->height *= 2;
 }

 if (field != V4L2_FIELD_ANY)
  pix->field = field;

 pix->width = width;
 pix->height = height;

 rvin_format_align(vin, pix);

 if (compose) {
  compose->top = 0;
  compose->left = 0;
  compose->width = pix->width;
  compose->height = pix->height;
 }
done:
 v4l2_subdev_free_pad_config(pad_cfg);

 return 0;
}
