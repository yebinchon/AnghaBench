
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct aspeed_video {int video_lock; } ;


 int aspeed_video_start (struct aspeed_video*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 struct aspeed_video* video_drvdata (struct file*) ;

__attribute__((used)) static int aspeed_video_open(struct file *file)
{
 int rc;
 struct aspeed_video *video = video_drvdata(file);

 mutex_lock(&video->video_lock);

 rc = v4l2_fh_open(file);
 if (rc) {
  mutex_unlock(&video->video_lock);
  return rc;
 }

 if (v4l2_fh_is_singular_file(file))
  aspeed_video_start(video);

 mutex_unlock(&video->video_lock);

 return 0;
}
