
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_format {int format; int which; } ;
struct v4l2_pix_format {int height; int width; int pixelformat; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct pxa_camera_format_xlate {int code; } ;
struct pxa_camera_dev {struct v4l2_pix_format current_pix; struct pxa_camera_format_xlate const* current_fmt; int user_formats; int lock; int vb2_vq; scalar_t__ active; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_warn (int ,char*,int ,...) ;
 int pad ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 scalar_t__ pxa_camera_check_frame (int ,int ) ;
 int pxa_camera_set_bus_param (struct pxa_camera_dev*) ;
 struct pxa_camera_format_xlate* pxa_mbus_xlate_by_fourcc (int ,int ) ;
 int pxac_vidioc_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int sensor_call (struct pxa_camera_dev*,int ,int ,int *,struct v4l2_subdev_format*) ;
 int set_fmt ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_fill_mbus_format (int *,struct v4l2_pix_format*,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct pxa_camera_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int pxac_vidioc_s_fmt_vid_cap(struct file *filp, void *priv,
        struct v4l2_format *f)
{
 struct pxa_camera_dev *pcdev = video_drvdata(filp);
 const struct pxa_camera_format_xlate *xlate;
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 unsigned long flags;
 int ret, is_busy;

 dev_dbg(pcdev_to_dev(pcdev),
  "s_fmt_vid_cap(pix=%dx%d:%x)\n",
  pix->width, pix->height, pix->pixelformat);

 spin_lock_irqsave(&pcdev->lock, flags);
 is_busy = pcdev->active || vb2_is_busy(&pcdev->vb2_vq);
 spin_unlock_irqrestore(&pcdev->lock, flags);

 if (is_busy)
  return -EBUSY;

 ret = pxac_vidioc_try_fmt_vid_cap(filp, priv, f);
 if (ret)
  return ret;

 xlate = pxa_mbus_xlate_by_fourcc(pcdev->user_formats,
      pix->pixelformat);
 v4l2_fill_mbus_format(&format.format, pix, xlate->code);
 ret = sensor_call(pcdev, pad, set_fmt, ((void*)0), &format);
 if (ret < 0) {
  dev_warn(pcdev_to_dev(pcdev),
    "Failed to configure for format %x\n",
    pix->pixelformat);
 } else if (pxa_camera_check_frame(pix->width, pix->height)) {
  dev_warn(pcdev_to_dev(pcdev),
    "Camera driver produced an unsupported frame %dx%d\n",
    pix->width, pix->height);
  return -EINVAL;
 }

 pcdev->current_fmt = xlate;
 pcdev->current_pix = *pix;

 ret = pxa_camera_set_bus_param(pcdev);
 return ret;
}
