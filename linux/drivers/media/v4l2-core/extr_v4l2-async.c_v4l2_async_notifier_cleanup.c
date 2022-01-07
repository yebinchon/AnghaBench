
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_notifier {int dummy; } ;


 int __v4l2_async_notifier_cleanup (struct v4l2_async_notifier*) ;
 int list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void v4l2_async_notifier_cleanup(struct v4l2_async_notifier *notifier)
{
 mutex_lock(&list_lock);

 __v4l2_async_notifier_cleanup(notifier);

 mutex_unlock(&list_lock);
}
