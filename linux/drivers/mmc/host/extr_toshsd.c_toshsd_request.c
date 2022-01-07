
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshsd_host {int lock; struct mmc_request* mrq; scalar_t__ ioaddr; } ;
struct mmc_request {TYPE_1__* cmd; int data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int error; } ;


 int ENOMEDIUM ;
 scalar_t__ SD_CARDSTATUS ;
 int SD_CARD_PRESENT_0 ;
 int WARN_ON (int ) ;
 int ioread16 (scalar_t__) ;
 struct toshsd_host* mmc_priv (struct mmc_host*) ;
 int mmc_request_done (struct mmc_host*,struct mmc_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int toshsd_set_led (struct toshsd_host*,int) ;
 int toshsd_start_cmd (struct toshsd_host*,TYPE_1__*) ;
 int toshsd_start_data (struct toshsd_host*,int ) ;

__attribute__((used)) static void toshsd_request(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct toshsd_host *host = mmc_priv(mmc);
 unsigned long flags;


 if (!(ioread16(host->ioaddr + SD_CARDSTATUS) & SD_CARD_PRESENT_0)) {
  mrq->cmd->error = -ENOMEDIUM;
  mmc_request_done(mmc, mrq);
  return;
 }

 spin_lock_irqsave(&host->lock, flags);

 WARN_ON(host->mrq != ((void*)0));

 host->mrq = mrq;

 if (mrq->data)
  toshsd_start_data(host, mrq->data);

 toshsd_set_led(host, 1);

 toshsd_start_cmd(host, mrq->cmd);

 spin_unlock_irqrestore(&host->lock, flags);
}
