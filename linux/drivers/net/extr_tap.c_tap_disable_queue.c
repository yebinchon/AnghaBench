
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int enabled; int queue_index; int tap; } ;
struct tap_dev {int numvtaps; int * taps; } ;


 int ASSERT_RTNL () ;
 int BUG_ON (int) ;
 int EINVAL ;
 int RCU_INIT_POINTER (int ,int *) ;
 int rcu_assign_pointer (int ,struct tap_queue*) ;
 void* rtnl_dereference (int ) ;

__attribute__((used)) static int tap_disable_queue(struct tap_queue *q)
{
 struct tap_dev *tap;
 struct tap_queue *nq;

 ASSERT_RTNL();
 if (!q->enabled)
  return -EINVAL;

 tap = rtnl_dereference(q->tap);

 if (tap) {
  int index = q->queue_index;
  BUG_ON(index >= tap->numvtaps);
  nq = rtnl_dereference(tap->taps[tap->numvtaps - 1]);
  nq->queue_index = index;

  rcu_assign_pointer(tap->taps[index], nq);
  RCU_INIT_POINTER(tap->taps[tap->numvtaps - 1], ((void*)0));
  q->enabled = 0;

  tap->numvtaps--;
 }

 return 0;
}
