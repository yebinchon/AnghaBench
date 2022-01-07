
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int async_list; struct v4l2_async_notifier* notifier; struct v4l2_async_subdev* asd; } ;
struct v4l2_device {int dummy; } ;
struct v4l2_async_subdev {int list; } ;
struct v4l2_async_notifier {struct v4l2_async_notifier* parent; int done; } ;


 int list_del (int *) ;
 int list_move (int *,int *) ;
 struct v4l2_async_notifier* v4l2_async_find_subdev_notifier (struct v4l2_subdev*) ;
 int v4l2_async_notifier_call_bound (struct v4l2_async_notifier*,struct v4l2_subdev*,struct v4l2_async_subdev*) ;
 int v4l2_async_notifier_try_all_subdevs (struct v4l2_async_notifier*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int v4l2_async_match_notify(struct v4l2_async_notifier *notifier,
       struct v4l2_device *v4l2_dev,
       struct v4l2_subdev *sd,
       struct v4l2_async_subdev *asd)
{
 struct v4l2_async_notifier *subdev_notifier;
 int ret;

 ret = v4l2_device_register_subdev(v4l2_dev, sd);
 if (ret < 0)
  return ret;

 ret = v4l2_async_notifier_call_bound(notifier, sd, asd);
 if (ret < 0) {
  v4l2_device_unregister_subdev(sd);
  return ret;
 }


 list_del(&asd->list);
 sd->asd = asd;
 sd->notifier = notifier;


 list_move(&sd->async_list, &notifier->done);




 subdev_notifier = v4l2_async_find_subdev_notifier(sd);
 if (!subdev_notifier || subdev_notifier->parent)
  return 0;






 subdev_notifier->parent = notifier;

 return v4l2_async_notifier_try_all_subdevs(subdev_notifier);
}
