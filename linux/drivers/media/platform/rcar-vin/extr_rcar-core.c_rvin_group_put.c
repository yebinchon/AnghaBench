
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rvin_group {int refcount; int lock; struct rvin_dev** vin; } ;
struct TYPE_2__ {int * mdev; } ;
struct rvin_dev {size_t id; TYPE_1__ v4l2_dev; struct rvin_group* group; } ;


 scalar_t__ WARN_ON (int) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rvin_group_release ;

__attribute__((used)) static void rvin_group_put(struct rvin_dev *vin)
{
 struct rvin_group *group = vin->group;

 mutex_lock(&group->lock);

 vin->group = ((void*)0);
 vin->v4l2_dev.mdev = ((void*)0);

 if (WARN_ON(group->vin[vin->id] != vin))
  goto out;

 group->vin[vin->id] = ((void*)0);
out:
 mutex_unlock(&group->lock);

 kref_put(&group->refcount, rvin_group_release);
}
