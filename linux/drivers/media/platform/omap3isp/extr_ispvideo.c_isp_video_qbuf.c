
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_buffer {int dummy; } ;
struct isp_video_fh {int queue; } ;
struct TYPE_4__ {TYPE_1__* v4l2_dev; } ;
struct isp_video {int queue_lock; TYPE_2__ video; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int mdev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isp_video_fh* to_isp_video_fh (void*) ;
 int vb2_qbuf (int *,int ,struct v4l2_buffer*) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
isp_video_qbuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct isp_video_fh *vfh = to_isp_video_fh(fh);
 struct isp_video *video = video_drvdata(file);
 int ret;

 mutex_lock(&video->queue_lock);
 ret = vb2_qbuf(&vfh->queue, video->video.v4l2_dev->mdev, b);
 mutex_unlock(&video->queue_lock);

 return ret;
}
