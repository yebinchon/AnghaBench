
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_ms {TYPE_1__* req; scalar_t__ eject; struct tifm_dev* dev; } ;
struct tifm_dev {int lock; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int ETIME ;
 int memstick_next_req (struct memstick_host*,TYPE_1__**) ;
 struct tifm_ms* memstick_priv (struct memstick_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tifm_ms_issue_cmd (struct tifm_ms*) ;

__attribute__((used)) static void tifm_ms_req_tasklet(unsigned long data)
{
 struct memstick_host *msh = (struct memstick_host *)data;
 struct tifm_ms *host = memstick_priv(msh);
 struct tifm_dev *sock = host->dev;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&sock->lock, flags);
 if (!host->req) {
  if (host->eject) {
   do {
    rc = memstick_next_req(msh, &host->req);
    if (!rc)
     host->req->error = -ETIME;
   } while (!rc);
   spin_unlock_irqrestore(&sock->lock, flags);
   return;
  }

  do {
   rc = memstick_next_req(msh, &host->req);
  } while (!rc && tifm_ms_issue_cmd(host));
 }
 spin_unlock_irqrestore(&sock->lock, flags);
}
