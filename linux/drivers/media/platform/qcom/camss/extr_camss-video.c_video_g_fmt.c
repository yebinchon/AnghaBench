
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;
struct camss_video {struct v4l2_format active_fmt; } ;


 struct camss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int video_g_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct camss_video *video = video_drvdata(file);

 *f = video->active_fmt;

 return 0;
}
