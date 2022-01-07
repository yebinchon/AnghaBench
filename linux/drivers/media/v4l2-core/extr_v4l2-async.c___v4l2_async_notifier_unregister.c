
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int list; int * v4l2_dev; int * sd; } ;


 int list_del (int *) ;
 int v4l2_async_notifier_unbind_all_subdevs (struct v4l2_async_notifier*) ;

__attribute__((used)) static void
__v4l2_async_notifier_unregister(struct v4l2_async_notifier *notifier)
{
 if (!notifier || (!notifier->v4l2_dev && !notifier->sd))
  return;

 v4l2_async_notifier_unbind_all_subdevs(notifier);

 notifier->sd = ((void*)0);
 notifier->v4l2_dev = ((void*)0);

 list_del(&notifier->list);
}
