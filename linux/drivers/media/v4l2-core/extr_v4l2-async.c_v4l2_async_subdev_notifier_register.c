
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_subdev* sd; scalar_t__ v4l2_dev; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int __v4l2_async_notifier_register (struct v4l2_async_notifier*) ;

int v4l2_async_subdev_notifier_register(struct v4l2_subdev *sd,
     struct v4l2_async_notifier *notifier)
{
 int ret;

 if (WARN_ON(!sd || notifier->v4l2_dev))
  return -EINVAL;

 notifier->sd = sd;

 ret = __v4l2_async_notifier_register(notifier);
 if (ret)
  notifier->sd = ((void*)0);

 return ret;
}
