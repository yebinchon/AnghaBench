
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int name; } ;
struct file {int dummy; } ;
struct em28xx {TYPE_1__* v4l2; } ;
struct TYPE_2__ {int v4l2_dev; } ;


 int EINVAL ;
 int g_tuner ;
 int strscpy (int ,char*,int) ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner*) ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *t)
{
 struct em28xx *dev = video_drvdata(file);

 if (t->index != 0)
  return -EINVAL;

 strscpy(t->name, "Tuner", sizeof(t->name));

 v4l2_device_call_all(&dev->v4l2->v4l2_dev, 0, tuner, g_tuner, t);
 return 0;
}
