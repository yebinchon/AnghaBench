
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_queue {int sk; int next; int tap; scalar_t__ enabled; } ;
struct tap_dev {int numqueues; } ;


 int BUG_ON (int ) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int list_del_init (int *) ;
 struct tap_dev* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_put (int *) ;
 int synchronize_rcu () ;
 int tap_disable_queue (struct tap_queue*) ;

__attribute__((used)) static void tap_put_queue(struct tap_queue *q)
{
 struct tap_dev *tap;

 rtnl_lock();
 tap = rtnl_dereference(q->tap);

 if (tap) {
  if (q->enabled)
   BUG_ON(tap_disable_queue(q));

  tap->numqueues--;
  RCU_INIT_POINTER(q->tap, ((void*)0));
  sock_put(&q->sk);
  list_del_init(&q->next);
 }

 rtnl_unlock();

 synchronize_rcu();
 sock_put(&q->sk);
}
