
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_device* v4l2_dev; struct v4l2_async_notifier* parent; } ;



__attribute__((used)) static struct v4l2_device *
v4l2_async_notifier_find_v4l2_dev(struct v4l2_async_notifier *notifier)
{
 while (notifier->parent)
  notifier = notifier->parent;

 return notifier->v4l2_dev;
}
