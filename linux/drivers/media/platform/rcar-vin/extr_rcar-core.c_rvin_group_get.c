
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct rvin_group {int lock; int mdev; struct rvin_dev** vin; int refcount; } ;
struct TYPE_4__ {int * mdev; } ;
struct rvin_dev {size_t id; TYPE_2__ v4l2_dev; struct rvin_group* group; TYPE_1__* dev; } ;
struct TYPE_3__ {size_t of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t RCAR_VIN_NUM ;
 int kfree (struct rvin_group*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct rvin_group* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_property_read_u32 (size_t,char*,size_t*) ;
 struct rvin_group* rvin_group_data ;
 int rvin_group_init (struct rvin_group*,struct rvin_dev*) ;
 int rvin_group_lock ;
 int rvin_group_release ;
 int vin_err (struct rvin_dev*,char*,...) ;

__attribute__((used)) static int rvin_group_get(struct rvin_dev *vin)
{
 struct rvin_group *group;
 u32 id;
 int ret;


 ret = of_property_read_u32(vin->dev->of_node, "renesas,id", &id);
 if (ret) {
  vin_err(vin, "%pOF: No renesas,id property found\n",
   vin->dev->of_node);
  return -EINVAL;
 }

 if (id >= RCAR_VIN_NUM) {
  vin_err(vin, "%pOF: Invalid renesas,id '%u'\n",
   vin->dev->of_node, id);
  return -EINVAL;
 }


 mutex_lock(&rvin_group_lock);
 if (rvin_group_data) {
  group = rvin_group_data;
  kref_get(&group->refcount);
 } else {
  group = kzalloc(sizeof(*group), GFP_KERNEL);
  if (!group) {
   ret = -ENOMEM;
   goto err_group;
  }

  ret = rvin_group_init(group, vin);
  if (ret) {
   kfree(group);
   vin_err(vin, "Failed to initialize group\n");
   goto err_group;
  }

  kref_init(&group->refcount);

  rvin_group_data = group;
 }
 mutex_unlock(&rvin_group_lock);


 mutex_lock(&group->lock);

 if (group->vin[id]) {
  vin_err(vin, "Duplicate renesas,id property value %u\n", id);
  mutex_unlock(&group->lock);
  kref_put(&group->refcount, rvin_group_release);
  return -EINVAL;
 }

 group->vin[id] = vin;

 vin->id = id;
 vin->group = group;
 vin->v4l2_dev.mdev = &group->mdev;

 mutex_unlock(&group->lock);

 return 0;
err_group:
 mutex_unlock(&rvin_group_lock);
 return ret;
}
