
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int work; } ;
struct mmc_host {TYPE_1__ detect; scalar_t__ card; } ;


 int TMIO_STAT_CARD_INSERT ;
 int TMIO_STAT_CARD_REMOVE ;
 int mmc_detect_change (struct mmc_host*,int ) ;
 int msecs_to_jiffies (int) ;
 int tmio_mmc_ack_mmc_irqs (struct tmio_mmc_host*,int) ;
 int work_pending (int *) ;

__attribute__((used)) static bool __tmio_mmc_card_detect_irq(struct tmio_mmc_host *host,
           int ireg, int status)
{
 struct mmc_host *mmc = host->mmc;


 if (ireg & (TMIO_STAT_CARD_INSERT | TMIO_STAT_CARD_REMOVE)) {
  tmio_mmc_ack_mmc_irqs(host, TMIO_STAT_CARD_INSERT |
   TMIO_STAT_CARD_REMOVE);
  if ((((ireg & TMIO_STAT_CARD_REMOVE) && mmc->card) ||
       ((ireg & TMIO_STAT_CARD_INSERT) && !mmc->card)) &&
      !work_pending(&mmc->detect.work))
   mmc_detect_change(host->mmc, msecs_to_jiffies(100));
  return 1;
 }

 return 0;
}
