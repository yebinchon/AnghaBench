
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int field; scalar_t__ pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct isc_format {scalar_t__ fourcc; int mbus_code; } ;
struct TYPE_6__ {int bpp; scalar_t__ fourcc; struct isc_format* sd_format; } ;
struct isc_device {int num_user_formats; TYPE_3__ try_config; int v4l2_dev; TYPE_2__* current_subdev; struct isc_format** user_formats; } ;
struct TYPE_5__ {int sd; } ;


 int EINVAL ;
 scalar_t__ ISC_IS_FORMAT_RAW (int ) ;
 int ISC_MAX_SUPPORT_HEIGHT ;
 int ISC_MAX_SUPPORT_WIDTH ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int debug ;
 struct isc_format* find_format_by_fourcc (struct isc_device*,scalar_t__) ;
 int isc_try_configure_pipeline (struct isc_device*) ;
 int isc_try_configure_rlp_dma (struct isc_device*,int) ;
 int isc_try_validate_formats (struct isc_device*) ;
 int memset (TYPE_3__*,int ,int) ;
 int pad ;
 scalar_t__ sensor_preferred ;
 int set_fmt ;
 int v4l2_dbg (int,int ,int *,char*,char*,...) ;
 int v4l2_err (int *,char*) ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,int *) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int isc_try_fmt(struct isc_device *isc, struct v4l2_format *f,
   u32 *code)
{
 int i;
 struct isc_format *sd_fmt = ((void*)0), *direct_fmt = ((void*)0);
 struct v4l2_pix_format *pixfmt = &f->fmt.pix;
 struct v4l2_subdev_pad_config pad_cfg;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_TRY,
 };
 u32 mbus_code;
 int ret;
 bool rlp_dma_direct_dump = 0;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;


 for (i = 0; i < isc->num_user_formats; i++) {
  if (ISC_IS_FORMAT_RAW(isc->user_formats[i]->mbus_code)) {
   sd_fmt = isc->user_formats[i];
   break;
  }
 }



 direct_fmt = find_format_by_fourcc(isc, pixfmt->pixelformat);




 if (direct_fmt && sd_fmt && sensor_preferred)
  sd_fmt = direct_fmt;


 if (direct_fmt && !sd_fmt)
  sd_fmt = direct_fmt;




 if (sd_fmt == direct_fmt)
  rlp_dma_direct_dump = 1;





 if (!sd_fmt && !direct_fmt) {
  sd_fmt = isc->user_formats[isc->num_user_formats - 1];
  v4l2_dbg(1, debug, &isc->v4l2_dev,
    "Sensor not supporting %.4s, using %.4s\n",
    (char *)&pixfmt->pixelformat, (char *)&sd_fmt->fourcc);
 }

 if (!sd_fmt) {
  ret = -EINVAL;
  goto isc_try_fmt_err;
 }


 v4l2_dbg(1, debug, &isc->v4l2_dev,
   "Preferring to have sensor using format %.4s\n",
   (char *)&sd_fmt->fourcc);


 isc->try_config.sd_format = sd_fmt;


 if (pixfmt->width > ISC_MAX_SUPPORT_WIDTH)
  pixfmt->width = ISC_MAX_SUPPORT_WIDTH;
 if (pixfmt->height > ISC_MAX_SUPPORT_HEIGHT)
  pixfmt->height = ISC_MAX_SUPPORT_HEIGHT;





 mbus_code = sd_fmt->mbus_code;





 isc->try_config.fourcc = pixfmt->pixelformat;

 if (isc_try_validate_formats(isc)) {
  pixfmt->pixelformat = isc->try_config.fourcc = sd_fmt->fourcc;

  ret = isc_try_validate_formats(isc);
  if (ret)
   goto isc_try_fmt_err;
 }

 ret = isc_try_configure_rlp_dma(isc, rlp_dma_direct_dump);
 if (ret)
  goto isc_try_fmt_err;

 ret = isc_try_configure_pipeline(isc);
 if (ret)
  goto isc_try_fmt_err;

 v4l2_fill_mbus_format(&format.format, pixfmt, mbus_code);
 ret = v4l2_subdev_call(isc->current_subdev->sd, pad, set_fmt,
          &pad_cfg, &format);
 if (ret < 0)
  goto isc_try_fmt_subdev_err;

 v4l2_fill_pix_format(pixfmt, &format.format);

 pixfmt->field = V4L2_FIELD_NONE;
 pixfmt->bytesperline = (pixfmt->width * isc->try_config.bpp) >> 3;
 pixfmt->sizeimage = pixfmt->bytesperline * pixfmt->height;

 if (code)
  *code = mbus_code;

 return 0;

isc_try_fmt_err:
 v4l2_err(&isc->v4l2_dev, "Could not find any possible format for a working pipeline\n");
isc_try_fmt_subdev_err:
 memset(&isc->try_config, 0, sizeof(isc->try_config));

 return ret;
}
