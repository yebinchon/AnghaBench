
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {char* code; int height; int width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int which; } ;
struct v4l2_pix_format {scalar_t__ pixelformat; int height; int width; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct dcmi_framesize {int height; int width; } ;
struct stm32_dcmi {int do_crop; struct dcmi_framesize sd_framesize; struct dcmi_format const* sd_format; struct v4l2_format fmt; int dev; } ;
struct dcmi_format {int mbus_code; } ;


 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dcmi_pipeline_s_fmt (struct stm32_dcmi*,int *,struct v4l2_subdev_format*) ;
 int dcmi_try_fmt (struct stm32_dcmi*,struct v4l2_format*,struct dcmi_format const**,struct dcmi_framesize*) ;
 int dev_dbg (int ,char*,char*,int ,int ) ;
 int v4l2_fill_mbus_format (struct v4l2_mbus_framefmt*,struct v4l2_pix_format*,int ) ;

__attribute__((used)) static int dcmi_set_fmt(struct stm32_dcmi *dcmi, struct v4l2_format *f)
{
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 const struct dcmi_format *sd_format;
 struct dcmi_framesize sd_framesize;
 struct v4l2_mbus_framefmt *mf = &format.format;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 int ret;







 ret = dcmi_try_fmt(dcmi, f, &sd_format, &sd_framesize);
 if (ret)
  return ret;


 if (pix->pixelformat == V4L2_PIX_FMT_JPEG)
  dcmi->do_crop = 0;


 v4l2_fill_mbus_format(mf, pix,
         sd_format->mbus_code);
 mf->width = sd_framesize.width;
 mf->height = sd_framesize.height;

 ret = dcmi_pipeline_s_fmt(dcmi, ((void*)0), &format);
 if (ret < 0)
  return ret;

 dev_dbg(dcmi->dev, "Sensor format set to 0x%x %ux%u\n",
  mf->code, mf->width, mf->height);
 dev_dbg(dcmi->dev, "Buffer format set to %4.4s %ux%u\n",
  (char *)&pix->pixelformat,
  pix->width, pix->height);

 dcmi->fmt = *f;
 dcmi->sd_format = sd_format;
 dcmi->sd_framesize = sd_framesize;

 return 0;
}
