
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct vsp1_video {TYPE_1__ queue; } ;
struct TYPE_4__ {int pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_2__ fmt; } ;
struct v4l2_fh {int vdev; } ;
struct file {struct v4l2_fh* private_data; } ;


 int EINVAL ;
 int __vsp1_video_try_format (struct vsp1_video*,int *,int *) ;
 struct vsp1_video* to_vsp1_video (int ) ;

__attribute__((used)) static int
vsp1_video_try_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct v4l2_fh *vfh = file->private_data;
 struct vsp1_video *video = to_vsp1_video(vfh->vdev);

 if (format->type != video->queue.type)
  return -EINVAL;

 return __vsp1_video_try_format(video, &format->fmt.pix_mp, ((void*)0));
}
