
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int enabled; size_t queue_index; } ;
struct tap_dev {size_t numvtaps; int * taps; } ;
struct file {int dummy; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int rcu_assign_pointer (int ,struct tap_queue*) ;

__attribute__((used)) static int tap_enable_queue(struct tap_dev *tap, struct file *file,
       struct tap_queue *q)
{
 int err = -EINVAL;

 ASSERT_RTNL();

 if (q->enabled)
  goto out;

 err = 0;
 rcu_assign_pointer(tap->taps[tap->numvtaps], q);
 q->queue_index = tap->numvtaps;
 q->enabled = 1;

 tap->numvtaps++;
out:
 return err;
}
