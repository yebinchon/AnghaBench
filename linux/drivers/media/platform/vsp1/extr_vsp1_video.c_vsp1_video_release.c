
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct v4l2_fh* owner; } ;
struct vsp1_video {int vsp1; int lock; TYPE_1__ queue; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_release (struct file*) ;
 int vb2_queue_release (TYPE_1__*) ;
 struct vsp1_video* video_drvdata (struct file*) ;
 int vsp1_device_put (int ) ;

__attribute__((used)) static int vsp1_video_release(struct file *file)
{
 struct vsp1_video *video = video_drvdata(file);
 struct v4l2_fh *vfh = file->private_data;

 mutex_lock(&video->lock);
 if (video->queue.owner == vfh) {
  vb2_queue_release(&video->queue);
  video->queue.owner = ((void*)0);
 }
 mutex_unlock(&video->lock);

 vsp1_device_put(video->vsp1);

 v4l2_fh_release(file);

 file->private_data = ((void*)0);

 return 0;
}
