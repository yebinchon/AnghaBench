
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
struct vivid_dev {size_t input; struct v4l2_dv_timings dv_timings_out; struct v4l2_dv_timings* dv_timings_cap; } ;
struct video_device {scalar_t__ vfl_dir; } ;
struct file {int dummy; } ;


 int ENODATA ;
 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 struct vivid_dev* video_drvdata (struct file*) ;
 int vivid_is_hdmi_cap (struct vivid_dev*) ;
 int vivid_is_hdmi_out (struct vivid_dev*) ;

int vidioc_g_dv_timings(struct file *file, void *_fh,
        struct v4l2_dv_timings *timings)
{
 struct vivid_dev *dev = video_drvdata(file);
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX) {
  if (!vivid_is_hdmi_cap(dev))
   return -ENODATA;
  *timings = dev->dv_timings_cap[dev->input];
 } else {
  if (!vivid_is_hdmi_out(dev))
   return -ENODATA;
  *timings = dev->dv_timings_out;
 }
 return 0;
}
