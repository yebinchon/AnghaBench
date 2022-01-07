
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct isp_video_fh {int queue; } ;
struct isp_video {int queue_lock; } ;
struct file {int f_flags; } ;


 int O_NONBLOCK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isp_video_fh* to_isp_video_fh (void*) ;
 int vb2_dqbuf (int *,struct v4l2_buffer*,int) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
isp_video_dqbuf(struct file *file, void *fh, struct v4l2_buffer *b)
{
 struct isp_video_fh *vfh = to_isp_video_fh(fh);
 struct isp_video *video = video_drvdata(file);
 int ret;

 mutex_lock(&video->queue_lock);
 ret = vb2_dqbuf(&vfh->queue, b, file->f_flags & O_NONBLOCK);
 mutex_unlock(&video->queue_lock);

 return ret;
}
