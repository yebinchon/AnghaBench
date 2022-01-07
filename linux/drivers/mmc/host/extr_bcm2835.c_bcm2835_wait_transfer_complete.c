
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct bcm2835_host {TYPE_2__* mrq; TYPE_1__* pdev; scalar_t__ ioaddr; } ;
struct TYPE_6__ {int flags; int error; } ;
struct TYPE_5__ {TYPE_3__* data; } ;
struct TYPE_4__ {int dev; } ;


 int ETIMEDOUT ;
 int MMC_DATA_READ ;
 scalar_t__ SDEDM ;
 int SDEDM_FORCE_DATA_MODE ;
 int SDEDM_FSM_DATAMODE ;
 int SDEDM_FSM_IDENTMODE ;
 int SDEDM_FSM_MASK ;
 int SDEDM_FSM_READWAIT ;
 int SDEDM_FSM_WRITESTART1 ;
 int bcm2835_dumpregs (struct bcm2835_host*) ;
 int cpu_relax () ;
 int dev_err (int *,char*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_wait_transfer_complete(struct bcm2835_host *host)
{
 int timediff;
 u32 alternate_idle;

 alternate_idle = (host->mrq->data->flags & MMC_DATA_READ) ?
  SDEDM_FSM_READWAIT : SDEDM_FSM_WRITESTART1;

 timediff = 0;

 while (1) {
  u32 edm, fsm;

  edm = readl(host->ioaddr + SDEDM);
  fsm = edm & SDEDM_FSM_MASK;

  if ((fsm == SDEDM_FSM_IDENTMODE) ||
      (fsm == SDEDM_FSM_DATAMODE))
   break;
  if (fsm == alternate_idle) {
   writel(edm | SDEDM_FORCE_DATA_MODE,
          host->ioaddr + SDEDM);
   break;
  }

  timediff++;
  if (timediff == 100000) {
   dev_err(&host->pdev->dev,
    "wait_transfer_complete - still waiting after %d retries\n",
    timediff);
   bcm2835_dumpregs(host);
   host->mrq->data->error = -ETIMEDOUT;
   return;
  }
  cpu_relax();
 }
}
