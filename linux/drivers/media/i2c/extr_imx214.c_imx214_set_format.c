
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int xfer_func; int ycbcr_enc; int quantization; int field; int code; int height; int width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int height; int width; } ;
struct imx214_mode {int height; int width; } ;
struct imx214 {int mutex; } ;


 int ARRAY_SIZE (int ) ;
 int IMX214_MBUS_CODE ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int ,int ) ;
 int V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 struct v4l2_rect* __imx214_get_pad_crop (struct imx214*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct v4l2_mbus_framefmt* __imx214_get_pad_format (struct imx214*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int height ;
 int imx214_modes ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx214* to_imx214 (struct v4l2_subdev*) ;
 struct imx214_mode* v4l2_find_nearest_size (int ,int ,int ,int ,int ,int ) ;
 int width ;

__attribute__((used)) static int imx214_set_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *format)
{
 struct imx214 *imx214 = to_imx214(sd);
 struct v4l2_mbus_framefmt *__format;
 struct v4l2_rect *__crop;
 const struct imx214_mode *mode;

 mutex_lock(&imx214->mutex);

 __crop = __imx214_get_pad_crop(imx214, cfg, format->pad, format->which);

 mode = v4l2_find_nearest_size(imx214_modes,
          ARRAY_SIZE(imx214_modes), width, height,
          format->format.width,
          format->format.height);

 __crop->width = mode->width;
 __crop->height = mode->height;

 __format = __imx214_get_pad_format(imx214, cfg, format->pad,
        format->which);
 __format->width = __crop->width;
 __format->height = __crop->height;
 __format->code = IMX214_MBUS_CODE;
 __format->field = V4L2_FIELD_NONE;
 __format->colorspace = V4L2_COLORSPACE_SRGB;
 __format->ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(__format->colorspace);
 __format->quantization = V4L2_MAP_QUANTIZATION_DEFAULT(1,
    __format->colorspace, __format->ycbcr_enc);
 __format->xfer_func = V4L2_MAP_XFER_FUNC_DEFAULT(__format->colorspace);

 format->format = *__format;

 mutex_unlock(&imx214->mutex);

 return 0;
}
