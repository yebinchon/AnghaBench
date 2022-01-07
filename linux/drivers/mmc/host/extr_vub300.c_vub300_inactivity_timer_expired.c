
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int inactivity_timer; scalar_t__ cmd; int kref; int interface; } ;
struct timer_list {int dummy; } ;


 scalar_t__ HZ ;
 struct vub300_mmc_host* from_timer (int ,struct timer_list*,int ) ;
 int inactivity_timer ;
 scalar_t__ jiffies ;
 int kref_put (int *,int ) ;
 int mod_timer (int *,scalar_t__) ;
 struct vub300_mmc_host* vub300 ;
 int vub300_delete ;
 int vub300_queue_dead_work (struct vub300_mmc_host*) ;

__attribute__((used)) static void vub300_inactivity_timer_expired(struct timer_list *t)
{
 struct vub300_mmc_host *vub300 = from_timer(vub300, t,
          inactivity_timer);
 if (!vub300->interface) {
  kref_put(&vub300->kref, vub300_delete);
 } else if (vub300->cmd) {
  mod_timer(&vub300->inactivity_timer, jiffies + HZ);
 } else {
  vub300_queue_dead_work(vub300);
  mod_timer(&vub300->inactivity_timer, jiffies + HZ);
 }
}
