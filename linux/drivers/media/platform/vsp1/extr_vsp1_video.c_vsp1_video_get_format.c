
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct vsp1_video {int lock; TYPE_1__* rwpf; TYPE_2__ queue; } ;
struct TYPE_6__ {int pix_mp; } ;
struct v4l2_format {scalar_t__ type; TYPE_3__ fmt; } ;
struct v4l2_fh {int vdev; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_4__ {int format; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_video* to_vsp1_video (int ) ;

__attribute__((used)) static int
vsp1_video_get_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct v4l2_fh *vfh = file->private_data;
 struct vsp1_video *video = to_vsp1_video(vfh->vdev);

 if (format->type != video->queue.type)
  return -EINVAL;

 mutex_lock(&video->lock);
 format->fmt.pix_mp = video->rwpf->format;
 mutex_unlock(&video->lock);

 return 0;
}
