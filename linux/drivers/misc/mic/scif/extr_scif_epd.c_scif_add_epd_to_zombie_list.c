
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_endpt {int list; int lock; int state; } ;
struct TYPE_2__ {int misc_work; int eplock; int nr_zombies; int zombie; } ;


 int SCIFEP_ZOMBIE ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 TYPE_1__ scif_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void scif_add_epd_to_zombie_list(struct scif_endpt *ep, bool eplock_held)
{
 if (!eplock_held)
  mutex_lock(&scif_info.eplock);
 spin_lock(&ep->lock);
 ep->state = SCIFEP_ZOMBIE;
 spin_unlock(&ep->lock);
 list_add_tail(&ep->list, &scif_info.zombie);
 scif_info.nr_zombies++;
 if (!eplock_held)
  mutex_unlock(&scif_info.eplock);
 schedule_work(&scif_info.misc_work);
}
