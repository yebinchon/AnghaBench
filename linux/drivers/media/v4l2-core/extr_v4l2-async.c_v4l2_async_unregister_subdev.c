
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {TYPE_1__* asd; struct v4l2_async_notifier* notifier; int * subdev_notifier; } ;
struct v4l2_async_notifier {int waiting; } ;
struct TYPE_2__ {int list; } ;


 int __v4l2_async_notifier_cleanup (int *) ;
 int __v4l2_async_notifier_unregister (int *) ;
 int kfree (int *) ;
 int list_add (int *,int *) ;
 int list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_async_cleanup (struct v4l2_subdev*) ;
 int v4l2_async_notifier_call_unbind (struct v4l2_async_notifier*,struct v4l2_subdev*,TYPE_1__*) ;

void v4l2_async_unregister_subdev(struct v4l2_subdev *sd)
{
 mutex_lock(&list_lock);

 __v4l2_async_notifier_unregister(sd->subdev_notifier);
 __v4l2_async_notifier_cleanup(sd->subdev_notifier);
 kfree(sd->subdev_notifier);
 sd->subdev_notifier = ((void*)0);

 if (sd->asd) {
  struct v4l2_async_notifier *notifier = sd->notifier;

  list_add(&sd->asd->list, &notifier->waiting);

  v4l2_async_notifier_call_unbind(notifier, sd, sd->asd);
 }

 v4l2_async_cleanup(sd);

 mutex_unlock(&list_lock);
}
