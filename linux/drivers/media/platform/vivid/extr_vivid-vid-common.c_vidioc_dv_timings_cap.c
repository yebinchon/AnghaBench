
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int dummy; } ;
struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_dv_timings_cap {int dummy; } ;
struct file {int dummy; } ;


 int ENODATA ;
 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 struct v4l2_dv_timings_cap vivid_dv_timings_cap ;
 int vivid_is_hdmi_cap (struct vivid_dev*) ;
 int vivid_is_hdmi_out (struct vivid_dev*) ;

int vidioc_dv_timings_cap(struct file *file, void *_fh,
        struct v4l2_dv_timings_cap *cap)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX) {
  if (!vivid_is_hdmi_cap(dev))
   return -ENODATA;
 } else {
  if (!vivid_is_hdmi_out(dev))
   return -ENODATA;
 }
 *cap = vivid_dv_timings_cap;
 return 0;
}
