
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct go7007 {int v4l2_dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int call_all (int *,int ,int ,struct v4l2_frequency*) ;
 int g_frequency ;
 int tuner ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct go7007 *go = video_drvdata(file);

 if (f->tuner)
  return -EINVAL;

 return call_all(&go->v4l2_dev, tuner, g_frequency, f);
}
