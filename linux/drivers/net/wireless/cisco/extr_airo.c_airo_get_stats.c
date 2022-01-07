
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; struct airo_info* ml_priv; } ;
struct airo_info {int thr_wait; int jobs; int sem; } ;


 int JOB_STATS ;
 int airo_read_stats (struct net_device*) ;
 scalar_t__ down_trylock (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static struct net_device_stats *airo_get_stats(struct net_device *dev)
{
 struct airo_info *local = dev->ml_priv;

 if (!test_bit(JOB_STATS, &local->jobs)) {

  if (down_trylock(&local->sem) != 0) {
   set_bit(JOB_STATS, &local->jobs);
   wake_up_interruptible(&local->thr_wait);
  } else
   airo_read_stats(dev);
 }

 return &dev->stats;
}
