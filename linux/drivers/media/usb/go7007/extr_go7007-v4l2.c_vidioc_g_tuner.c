
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int name; } ;
struct go7007 {int v4l2_dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int call_all (int *,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strscpy (int ,char*,int) ;
 int tuner ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct go7007 *go = video_drvdata(file);

 if (t->index != 0)
  return -EINVAL;

 strscpy(t->name, "Tuner", sizeof(t->name));
 return call_all(&go->v4l2_dev, tuner, g_tuner, t);
}
