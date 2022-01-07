
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct TYPE_4__ {scalar_t__ fwnode; } ;
struct v4l2_async_subdev {TYPE_1__ match; } ;
struct v4l2_async_notifier {int v4l2_dev; } ;
struct rvin_dev {TYPE_3__* group; } ;
struct TYPE_6__ {int lock; TYPE_2__* csi; scalar_t__* vin; } ;
struct TYPE_5__ {scalar_t__ fwnode; int * subdev; } ;


 unsigned int RCAR_VIN_NUM ;
 unsigned int RVIN_CSI_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvin_v4l2_unregister (scalar_t__) ;
 struct rvin_dev* v4l2_dev_to_vin (int ) ;
 int vin_dbg (struct rvin_dev*,char*,int ,unsigned int) ;

__attribute__((used)) static void rvin_group_notify_unbind(struct v4l2_async_notifier *notifier,
         struct v4l2_subdev *subdev,
         struct v4l2_async_subdev *asd)
{
 struct rvin_dev *vin = v4l2_dev_to_vin(notifier->v4l2_dev);
 unsigned int i;

 for (i = 0; i < RCAR_VIN_NUM; i++)
  if (vin->group->vin[i])
   rvin_v4l2_unregister(vin->group->vin[i]);

 mutex_lock(&vin->group->lock);

 for (i = 0; i < RVIN_CSI_MAX; i++) {
  if (vin->group->csi[i].fwnode != asd->match.fwnode)
   continue;
  vin->group->csi[i].subdev = ((void*)0);
  vin_dbg(vin, "Unbind CSI-2 %s from slot %u\n", subdev->name, i);
  break;
 }

 mutex_unlock(&vin->group->lock);
}
