
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int lock; int card_tasklet; int flags; } ;
struct timer_list {int dummy; } ;


 int BUG_ON (int ) ;
 int DBG (char*) ;
 int WBSD_FIGNORE_DETECT ;
 struct wbsd_host* from_timer (int ,struct timer_list*,int ) ;
 struct wbsd_host* host ;
 int ignore_timer ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void wbsd_reset_ignore(struct timer_list *t)
{
 struct wbsd_host *host = from_timer(host, t, ignore_timer);

 BUG_ON(host == ((void*)0));

 DBG("Resetting card detection ignore\n");

 spin_lock_bh(&host->lock);

 host->flags &= ~WBSD_FIGNORE_DETECT;





 tasklet_schedule(&host->card_tasklet);

 spin_unlock_bh(&host->lock);
}
