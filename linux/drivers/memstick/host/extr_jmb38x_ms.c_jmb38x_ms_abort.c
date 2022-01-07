
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int lock; TYPE_1__* req; TYPE_3__* chip; struct memstick_host* msh; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int error; } ;


 int ETIME ;
 int dev_dbg (int *,char*) ;
 struct jmb38x_ms_host* from_timer (int ,struct timer_list*,int ) ;
 struct jmb38x_ms_host* host ;
 int jmb38x_ms_complete_cmd (struct memstick_host*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void jmb38x_ms_abort(struct timer_list *t)
{
 struct jmb38x_ms_host *host = from_timer(host, t, timer);
 struct memstick_host *msh = host->msh;
 unsigned long flags;

 dev_dbg(&host->chip->pdev->dev, "abort\n");
 spin_lock_irqsave(&host->lock, flags);
 if (host->req) {
  host->req->error = -ETIME;
  jmb38x_ms_complete_cmd(msh, 0);
 }
 spin_unlock_irqrestore(&host->lock, flags);
}
