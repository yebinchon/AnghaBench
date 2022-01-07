
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ycbcr_enc; int xfer_func; int quantization; int colorspace; int pixelformat; int height; int width; } ;
struct TYPE_4__ {int name; } ;
struct vimc_cap_device {TYPE_2__ format; TYPE_1__ vdev; int dev; int queue; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct vimc_cap_device* video_drvdata (struct file*) ;
 int vimc_cap_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int vimc_cap_s_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct vimc_cap_device *vcap = video_drvdata(file);
 int ret;


 if (vb2_is_busy(&vcap->queue))
  return -EBUSY;

 ret = vimc_cap_try_fmt_vid_cap(file, priv, f);
 if (ret)
  return ret;

 dev_dbg(vcap->dev, "%s: format update: "
  "old:%dx%d (0x%x, %d, %d, %d, %d) "
  "new:%dx%d (0x%x, %d, %d, %d, %d)\n", vcap->vdev.name,

  vcap->format.width, vcap->format.height,
  vcap->format.pixelformat, vcap->format.colorspace,
  vcap->format.quantization, vcap->format.xfer_func,
  vcap->format.ycbcr_enc,

  f->fmt.pix.width, f->fmt.pix.height,
  f->fmt.pix.pixelformat, f->fmt.pix.colorspace,
  f->fmt.pix.quantization, f->fmt.pix.xfer_func,
  f->fmt.pix.ycbcr_enc);

 vcap->format = f->fmt.pix;

 return 0;
}
