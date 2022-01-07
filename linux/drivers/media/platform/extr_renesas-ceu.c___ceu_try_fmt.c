
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_7__ {void* code; } ;
struct v4l2_subdev_format {TYPE_3__ format; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format_mplane {int pixelformat; int height; int width; } ;
struct TYPE_5__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_6__ {void* mbus_code; } ;
struct ceu_subdev {TYPE_2__ mbus_fmt; struct v4l2_subdev* v4l2_sd; } ;
struct ceu_fmt {int dummy; } ;
struct ceu_device {struct ceu_subdev* sd; } ;


 int CEU_MAX_HEIGHT ;
 int CEU_MAX_WIDTH ;
 int EINVAL ;
 void* MEDIA_BUS_FMT_UYVY8_2X8 ;
 void* MEDIA_BUS_FMT_VYUY8_2X8 ;
 void* MEDIA_BUS_FMT_YUYV8_2X8 ;
 void* MEDIA_BUS_FMT_YVYU8_2X8 ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int ceu_calc_plane_sizes (struct ceu_device*,struct ceu_fmt const*,struct v4l2_pix_format_mplane*) ;
 struct ceu_fmt* get_ceu_fmt_from_fourcc (int) ;
 int pad ;
 int set_fmt ;
 int v4l2_fill_mbus_format_mplane (TYPE_3__*,struct v4l2_pix_format_mplane*) ;
 int v4l2_fill_pix_format_mplane (struct v4l2_pix_format_mplane*,TYPE_3__*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int v4l_bound_align_image (int *,int,int ,int,int *,int,int ,int,int ) ;

__attribute__((used)) static int __ceu_try_fmt(struct ceu_device *ceudev, struct v4l2_format *v4l2_fmt,
    u32 *sd_mbus_code)
{
 struct ceu_subdev *ceu_sd = ceudev->sd;
 struct v4l2_pix_format_mplane *pix = &v4l2_fmt->fmt.pix_mp;
 struct v4l2_subdev *v4l2_sd = ceu_sd->v4l2_sd;
 struct v4l2_subdev_pad_config pad_cfg;
 const struct ceu_fmt *ceu_fmt;
 u32 mbus_code_old;
 u32 mbus_code;
 int ret;






 struct v4l2_subdev_format sd_format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };

 mbus_code_old = ceu_sd->mbus_fmt.mbus_code;

 switch (pix->pixelformat) {
 case 129:
  mbus_code = MEDIA_BUS_FMT_YUYV8_2X8;
  break;
 case 131:
  mbus_code = MEDIA_BUS_FMT_UYVY8_2X8;
  break;
 case 128:
  mbus_code = MEDIA_BUS_FMT_YVYU8_2X8;
  break;
 case 130:
  mbus_code = MEDIA_BUS_FMT_VYUY8_2X8;
  break;
 case 134:
 case 132:
 case 135:
 case 133:
  mbus_code = ceu_sd->mbus_fmt.mbus_code;
  break;

 default:
  pix->pixelformat = 134;
  mbus_code = ceu_sd->mbus_fmt.mbus_code;
  break;
 }

 ceu_fmt = get_ceu_fmt_from_fourcc(pix->pixelformat);


 v4l_bound_align_image(&pix->width, 2, CEU_MAX_WIDTH, 4,
         &pix->height, 4, CEU_MAX_HEIGHT, 4, 0);

 v4l2_fill_mbus_format_mplane(&sd_format.format, pix);






 sd_format.format.code = mbus_code;
 ret = v4l2_subdev_call(v4l2_sd, pad, set_fmt, &pad_cfg, &sd_format);
 if (ret) {
  if (ret == -EINVAL) {

   sd_format.format.code = mbus_code_old;
   ret = v4l2_subdev_call(v4l2_sd, pad, set_fmt,
            &pad_cfg, &sd_format);
  }

  if (ret)
   return ret;
 }


 v4l2_fill_pix_format_mplane(pix, &sd_format.format);


 ceu_calc_plane_sizes(ceudev, ceu_fmt, pix);


 *sd_mbus_code = sd_format.format.code;

 return 0;
}
