
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int v4l2_dev; } ;
struct rvin_dev {TYPE_1__* parallel; int lock; } ;
struct TYPE_2__ {int sink_pad; int source_pad; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvin_parallel_subdevice_attach (struct rvin_dev*,struct v4l2_subdev*) ;
 struct rvin_dev* v4l2_dev_to_vin (int ) ;
 int v4l2_set_subdev_hostdata (struct v4l2_subdev*,struct rvin_dev*) ;
 int vin_dbg (struct rvin_dev*,char*,int ,int ,int ) ;

__attribute__((used)) static int rvin_parallel_notify_bound(struct v4l2_async_notifier *notifier,
          struct v4l2_subdev *subdev,
          struct v4l2_async_subdev *asd)
{
 struct rvin_dev *vin = v4l2_dev_to_vin(notifier->v4l2_dev);
 int ret;

 mutex_lock(&vin->lock);
 ret = rvin_parallel_subdevice_attach(vin, subdev);
 mutex_unlock(&vin->lock);
 if (ret)
  return ret;

 v4l2_set_subdev_hostdata(subdev, vin);

 vin_dbg(vin, "bound subdev %s source pad: %u sink pad: %u\n",
  subdev->name, vin->parallel->source_pad,
  vin->parallel->sink_pad);

 return 0;
}
