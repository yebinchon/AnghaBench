
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_async_subdev {int asd_list; } ;
struct v4l2_async_notifier {int asd_list; } ;


 int list_add_tail (int *,int *) ;
 int list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_async_notifier_asd_valid (struct v4l2_async_notifier*,struct v4l2_async_subdev*,int) ;

int v4l2_async_notifier_add_subdev(struct v4l2_async_notifier *notifier,
       struct v4l2_async_subdev *asd)
{
 int ret;

 mutex_lock(&list_lock);

 ret = v4l2_async_notifier_asd_valid(notifier, asd, -1);
 if (ret)
  goto unlock;

 list_add_tail(&asd->asd_list, &notifier->asd_list);

unlock:
 mutex_unlock(&list_lock);
 return ret;
}
