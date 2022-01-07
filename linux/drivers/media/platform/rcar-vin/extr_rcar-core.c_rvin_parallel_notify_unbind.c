
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int v4l2_dev; } ;
struct rvin_dev {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvin_parallel_subdevice_detach (struct rvin_dev*) ;
 struct rvin_dev* v4l2_dev_to_vin (int ) ;
 int vin_dbg (struct rvin_dev*,char*,int ) ;

__attribute__((used)) static void rvin_parallel_notify_unbind(struct v4l2_async_notifier *notifier,
     struct v4l2_subdev *subdev,
     struct v4l2_async_subdev *asd)
{
 struct rvin_dev *vin = v4l2_dev_to_vin(notifier->v4l2_dev);

 vin_dbg(vin, "unbind parallel subdev %s\n", subdev->name);

 mutex_lock(&vin->lock);
 rvin_parallel_subdevice_detach(vin);
 mutex_unlock(&vin->lock);
}
