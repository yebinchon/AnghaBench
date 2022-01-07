
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct video_device {scalar_t__ vfl_dir; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_vid_cap_s_std (struct file*,void*,int ) ;
 int vivid_vid_out_s_std (struct file*,void*,int ) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *fh, v4l2_std_id id)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX)
  return vivid_vid_cap_s_std(file, fh, id);
 return vivid_vid_out_s_std(file, fh, id);
}
