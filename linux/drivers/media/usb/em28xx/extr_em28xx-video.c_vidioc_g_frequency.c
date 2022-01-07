
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; int frequency; } ;
struct file {int dummy; } ;
struct em28xx_v4l2 {int frequency; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;


 int EINVAL ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
         struct v4l2_frequency *f)
{
 struct em28xx *dev = video_drvdata(file);
 struct em28xx_v4l2 *v4l2 = dev->v4l2;

 if (f->tuner != 0)
  return -EINVAL;

 f->frequency = v4l2->frequency;
 return 0;
}
