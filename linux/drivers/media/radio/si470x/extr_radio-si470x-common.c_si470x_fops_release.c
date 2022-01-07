
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {int (* fops_release ) (struct file*) ;} ;
struct file {int dummy; } ;


 int stub1 (struct file*) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_fops_release(struct file *file)
{
 struct si470x_device *radio = video_drvdata(file);

 return radio->fops_release(file);
}
