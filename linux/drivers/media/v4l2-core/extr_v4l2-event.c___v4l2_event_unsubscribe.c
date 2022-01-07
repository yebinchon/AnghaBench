
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subscribed_event {unsigned int in_use; int list; TYPE_1__* events; struct v4l2_fh* fh; } ;
struct v4l2_fh {int navailable; TYPE_2__* vdev; int subscribe_lock; } ;
struct TYPE_4__ {int fh_lock; } ;
struct TYPE_3__ {int list; } ;


 int assert_spin_locked (int *) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 size_t sev_pos (struct v4l2_subscribed_event*,unsigned int) ;

__attribute__((used)) static void __v4l2_event_unsubscribe(struct v4l2_subscribed_event *sev)
{
 struct v4l2_fh *fh = sev->fh;
 unsigned int i;

 lockdep_assert_held(&fh->subscribe_lock);
 assert_spin_locked(&fh->vdev->fh_lock);


 for (i = 0; i < sev->in_use; i++) {
  list_del(&sev->events[sev_pos(sev, i)].list);
  fh->navailable--;
 }
 list_del(&sev->list);
}
