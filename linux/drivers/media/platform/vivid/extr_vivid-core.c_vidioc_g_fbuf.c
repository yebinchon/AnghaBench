
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_framebuffer {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ VFL_DIR_RX ;
 struct video_device* video_devdata (struct file*) ;
 int vivid_vid_cap_g_fbuf (struct file*,void*,struct v4l2_framebuffer*) ;
 int vivid_vid_out_g_fbuf (struct file*,void*,struct v4l2_framebuffer*) ;

__attribute__((used)) static int vidioc_g_fbuf(struct file *file, void *fh, struct v4l2_framebuffer *a)
{
 struct video_device *vdev = video_devdata(file);

 if (vdev->vfl_dir == VFL_DIR_RX)
  return vivid_vid_cap_g_fbuf(file, fh, a);
 return vivid_vid_out_g_fbuf(file, fh, a);
}
