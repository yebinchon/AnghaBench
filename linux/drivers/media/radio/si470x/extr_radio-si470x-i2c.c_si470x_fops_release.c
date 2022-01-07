
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int dummy; } ;
struct file {int dummy; } ;


 int si470x_stop (struct si470x_device*) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_fops_release(struct file *file)
{
 struct si470x_device *radio = video_drvdata(file);

 if (v4l2_fh_is_singular_file(file))

  si470x_stop(radio);

 return v4l2_fh_release(file);
}
