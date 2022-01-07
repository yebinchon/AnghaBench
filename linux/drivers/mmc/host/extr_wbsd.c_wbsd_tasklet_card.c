
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wbsd_host {int flags; int mmc; int lock; int finish_tasklet; TYPE_2__* mrq; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int error; } ;


 int DBG (char*) ;
 int ENOMEDIUM ;
 int WARN_ON (int) ;
 int WBSD_CARDPRESENT ;
 scalar_t__ WBSD_CSR ;
 int WBSD_FCARD_PRESENT ;
 int WBSD_FIGNORE_DETECT ;
 int inb (scalar_t__) ;
 int mmc_detect_change (int ,int ) ;
 int mmc_hostname (int ) ;
 int msecs_to_jiffies (int) ;
 int pr_err (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int wbsd_reset (struct wbsd_host*) ;

__attribute__((used)) static void wbsd_tasklet_card(unsigned long param)
{
 struct wbsd_host *host = (struct wbsd_host *)param;
 u8 csr;
 int delay = -1;

 spin_lock(&host->lock);

 if (host->flags & WBSD_FIGNORE_DETECT) {
  spin_unlock(&host->lock);
  return;
 }

 csr = inb(host->base + WBSD_CSR);
 WARN_ON(csr == 0xff);

 if (csr & WBSD_CARDPRESENT) {
  if (!(host->flags & WBSD_FCARD_PRESENT)) {
   DBG("Card inserted\n");
   host->flags |= WBSD_FCARD_PRESENT;

   delay = 500;
  }
 } else if (host->flags & WBSD_FCARD_PRESENT) {
  DBG("Card removed\n");
  host->flags &= ~WBSD_FCARD_PRESENT;

  if (host->mrq) {
   pr_err("%s: Card removed during transfer!\n",
    mmc_hostname(host->mmc));
   wbsd_reset(host);

   host->mrq->cmd->error = -ENOMEDIUM;
   tasklet_schedule(&host->finish_tasklet);
  }

  delay = 0;
 }





 spin_unlock(&host->lock);

 if (delay != -1)
  mmc_detect_change(host->mmc, msecs_to_jiffies(delay));
}
