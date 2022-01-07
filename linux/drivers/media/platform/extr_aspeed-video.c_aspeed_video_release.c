
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct aspeed_video {int video_lock; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int aspeed_video_stop (struct aspeed_video*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 struct aspeed_video* video_drvdata (struct file*) ;

__attribute__((used)) static int aspeed_video_release(struct file *file)
{
 int rc;
 struct aspeed_video *video = video_drvdata(file);

 mutex_lock(&video->video_lock);

 if (v4l2_fh_is_singular_file(file))
  aspeed_video_stop(video);

 rc = _vb2_fop_release(file, ((void*)0));

 mutex_unlock(&video->video_lock);

 return rc;
}
