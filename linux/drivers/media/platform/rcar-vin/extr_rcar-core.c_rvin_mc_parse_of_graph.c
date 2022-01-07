
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_async_subdev {int dummy; } ;
struct rvin_dev {TYPE_2__* group; int v4l2_dev; } ;
struct TYPE_9__ {int * ops; int asd_list; } ;
struct TYPE_8__ {unsigned int count; TYPE_3__ notifier; TYPE_1__** vin; int lock; } ;
struct TYPE_7__ {int dev; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int RCAR_VIN_NUM ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvin_group_notify_ops ;
 int rvin_mc_parse_of_endpoint ;
 int v4l2_async_notifier_cleanup (TYPE_3__*) ;
 int v4l2_async_notifier_init (TYPE_3__*) ;
 int v4l2_async_notifier_parse_fwnode_endpoints_by_port (int ,TYPE_3__*,int,int,int ) ;
 int v4l2_async_notifier_register (int *,TYPE_3__*) ;
 int vin_err (struct rvin_dev*,char*) ;

__attribute__((used)) static int rvin_mc_parse_of_graph(struct rvin_dev *vin)
{
 unsigned int count = 0, vin_mask = 0;
 unsigned int i;
 int ret;

 mutex_lock(&vin->group->lock);


 for (i = 0; i < RCAR_VIN_NUM; i++) {
  if (vin->group->vin[i]) {
   count++;
   vin_mask |= BIT(i);
  }
 }

 if (vin->group->count != count) {
  mutex_unlock(&vin->group->lock);
  return 0;
 }

 mutex_unlock(&vin->group->lock);

 v4l2_async_notifier_init(&vin->group->notifier);






 for (i = 0; i < RCAR_VIN_NUM; i++) {
  if (!(vin_mask & BIT(i)))
   continue;

  ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(
    vin->group->vin[i]->dev, &vin->group->notifier,
    sizeof(struct v4l2_async_subdev), 1,
    rvin_mc_parse_of_endpoint);
  if (ret)
   return ret;
 }

 if (list_empty(&vin->group->notifier.asd_list))
  return 0;

 vin->group->notifier.ops = &rvin_group_notify_ops;
 ret = v4l2_async_notifier_register(&vin->v4l2_dev,
        &vin->group->notifier);
 if (ret < 0) {
  vin_err(vin, "Notifier registration failed\n");
  v4l2_async_notifier_cleanup(&vin->group->notifier);
  return ret;
 }

 return 0;
}
