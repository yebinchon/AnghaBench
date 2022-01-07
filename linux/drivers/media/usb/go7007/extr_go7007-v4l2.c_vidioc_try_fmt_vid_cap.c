
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct go7007 {int dummy; } ;
struct file {int dummy; } ;


 int set_capture_size (struct go7007*,struct v4l2_format*,int) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
   struct v4l2_format *fmt)
{
 struct go7007 *go = video_drvdata(file);

 return set_capture_size(go, fmt, 1);
}
