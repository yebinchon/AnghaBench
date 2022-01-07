
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_dir; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_vid_cap_overlay (struct file*,void*,unsigned int) ;
 int vivid_vid_out_overlay (struct file*,void*,unsigned int) ;

__attribute__((used)) static int vidioc_overlay(struct file *file, void *fh, unsigned i)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX)
  return vivid_vid_cap_overlay(file, fh, i);
 return vivid_vid_out_overlay(file, fh, i);
}
