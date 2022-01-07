
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int v4l2_dev; struct v4l2_async_notifier* parent; int waiting; } ;


 int list_empty (int *) ;
 int v4l2_async_notifier_call_complete (struct v4l2_async_notifier*) ;
 int v4l2_async_notifier_can_complete (struct v4l2_async_notifier*) ;

__attribute__((used)) static int
v4l2_async_notifier_try_complete(struct v4l2_async_notifier *notifier)
{

 if (!list_empty(&notifier->waiting))
  return 0;


 while (notifier->parent)
  notifier = notifier->parent;


 if (!notifier->v4l2_dev)
  return 0;


 if (!v4l2_async_notifier_can_complete(notifier))
  return 0;

 return v4l2_async_notifier_call_complete(notifier);
}
