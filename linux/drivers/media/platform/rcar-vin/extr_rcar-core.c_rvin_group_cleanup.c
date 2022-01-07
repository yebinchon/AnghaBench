
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_group {int lock; int mdev; } ;


 int media_device_cleanup (int *) ;
 int media_device_unregister (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void rvin_group_cleanup(struct rvin_group *group)
{
 media_device_unregister(&group->mdev);
 media_device_cleanup(&group->mdev);
 mutex_destroy(&group->lock);
}
