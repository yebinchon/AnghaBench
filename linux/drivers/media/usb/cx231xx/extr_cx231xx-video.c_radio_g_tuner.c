
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int name; scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int EINVAL ;
 int call_all (struct cx231xx*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strscpy (int ,char*,int) ;
 int tuner ;

__attribute__((used)) static int radio_g_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
{
 struct cx231xx *dev = ((struct cx231xx_fh *)priv)->dev;

 if (t->index)
  return -EINVAL;

 strscpy(t->name, "Radio", sizeof(t->name));

 call_all(dev, tuner, g_tuner, t);

 return 0;
}
