
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usdhi6_host {int status_mask; struct mmc_host* mmc; } ;
struct TYPE_2__ {int work; } ;
struct mmc_host {scalar_t__ card; TYPE_1__ detect; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int USDHI6_SD_INFO1 ;
 int USDHI6_SD_INFO1_CARD ;
 int USDHI6_SD_INFO1_CARD_EJECT ;
 int USDHI6_SD_INFO1_CARD_INSERT ;
 int mmc_detect_change (struct mmc_host*,int ) ;
 int msecs_to_jiffies (int) ;
 int usdhi6_read (struct usdhi6_host*,int ) ;
 int usdhi6_write (struct usdhi6_host*,int ,int) ;
 int work_pending (int *) ;

__attribute__((used)) static irqreturn_t usdhi6_cd(int irq, void *dev_id)
{
 struct usdhi6_host *host = dev_id;
 struct mmc_host *mmc = host->mmc;
 u16 status;


 status = usdhi6_read(host, USDHI6_SD_INFO1) & ~host->status_mask &
  USDHI6_SD_INFO1_CARD;

 if (!status)
  return IRQ_NONE;


 usdhi6_write(host, USDHI6_SD_INFO1, ~status);

 if (!work_pending(&mmc->detect.work) &&
     (((status & USDHI6_SD_INFO1_CARD_INSERT) &&
       !mmc->card) ||
      ((status & USDHI6_SD_INFO1_CARD_EJECT) &&
       mmc->card)))
  mmc_detect_change(mmc, msecs_to_jiffies(100));

 return IRQ_HANDLED;
}
