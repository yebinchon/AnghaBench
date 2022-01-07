
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vpfe_pixel_format {int dummy; } ;
struct vpfe_device {int v4l2_dev; } ;
struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* enum_pix ) (int *,int ) ;} ;
struct TYPE_4__ {TYPE_1__ hw_ops; } ;


 int EINVAL ;
 TYPE_2__* ccdc_dev ;
 int debug ;
 scalar_t__ stub1 (int *,int ) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 struct vpfe_pixel_format* vpfe_lookup_pix_format (int ) ;

__attribute__((used)) static int vpfe_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *fmt)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 const struct vpfe_pixel_format *pix_fmt;
 u32 pix;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_fmt_vid_cap\n");

 if (ccdc_dev->hw_ops.enum_pix(&pix, fmt->index) < 0)
  return -EINVAL;


 pix_fmt = vpfe_lookup_pix_format(pix);
 if (pix_fmt) {
  fmt->pixelformat = fmt->pixelformat;
  return 0;
 }
 return -EINVAL;
}
