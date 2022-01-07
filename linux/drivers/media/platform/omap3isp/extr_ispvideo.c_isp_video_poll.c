
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_video_fh {int queue; } ;
struct isp_video {int queue_lock; } ;
struct file {int private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isp_video_fh* to_isp_video_fh (int ) ;
 int vb2_poll (int *,struct file*,int *) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static __poll_t isp_video_poll(struct file *file, poll_table *wait)
{
 struct isp_video_fh *vfh = to_isp_video_fh(file->private_data);
 struct isp_video *video = video_drvdata(file);
 __poll_t ret;

 mutex_lock(&video->queue_lock);
 ret = vb2_poll(&vfh->queue, file, wait);
 mutex_unlock(&video->queue_lock);

 return ret;
}
