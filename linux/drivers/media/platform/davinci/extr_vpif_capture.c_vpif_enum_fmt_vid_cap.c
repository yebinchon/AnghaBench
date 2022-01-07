
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ if_type; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;
struct channel_obj {TYPE_2__ vpifparams; } ;


 int EINVAL ;
 int V4L2_PIX_FMT_NV16 ;
 int V4L2_PIX_FMT_SBGGR8 ;
 scalar_t__ VPIF_IF_RAW_BAYER ;
 int debug ;
 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;
 int vpif_dbg (int,int ,char*) ;

__attribute__((used)) static int vpif_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *fmt)
{
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);

 if (fmt->index != 0) {
  vpif_dbg(1, debug, "Invalid format index\n");
  return -EINVAL;
 }


 if (ch->vpifparams.iface.if_type == VPIF_IF_RAW_BAYER)
  fmt->pixelformat = V4L2_PIX_FMT_SBGGR8;
 else
  fmt->pixelformat = V4L2_PIX_FMT_NV16;
 return 0;
}
