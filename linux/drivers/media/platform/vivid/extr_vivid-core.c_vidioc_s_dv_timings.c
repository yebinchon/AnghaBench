
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_dv_timings {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_vid_cap_s_dv_timings (struct file*,void*,struct v4l2_dv_timings*) ;
 int vivid_vid_out_s_dv_timings (struct file*,void*,struct v4l2_dv_timings*) ;

__attribute__((used)) static int vidioc_s_dv_timings(struct file *file, void *fh, struct v4l2_dv_timings *timings)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX)
  return vivid_vid_cap_s_dv_timings(file, fh, timings);
 return vivid_vid_out_s_dv_timings(file, fh, timings);
}
