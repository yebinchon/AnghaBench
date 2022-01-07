
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int dummy; } ;
struct l2t_entry {int state; int neigh; int lock; } ;





 int neigh_event_send (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void t3_l2t_send_event(struct t3cdev *dev, struct l2t_entry *e)
{
again:
 switch (e->state) {
 case 129:
  neigh_event_send(e->neigh, ((void*)0));
  spin_lock_bh(&e->lock);
  if (e->state == 129) {
   e->state = 128;
  }
  spin_unlock_bh(&e->lock);
  return;
 case 128:
  return;
 case 130:
  spin_lock_bh(&e->lock);
  if (e->state != 130) {

   spin_unlock_bh(&e->lock);
   goto again;
  }
  spin_unlock_bh(&e->lock);
  neigh_event_send(e->neigh, ((void*)0));
 }
}
