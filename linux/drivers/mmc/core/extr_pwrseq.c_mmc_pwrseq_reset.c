
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_pwrseq {TYPE_1__* ops; } ;
struct mmc_host {struct mmc_pwrseq* pwrseq; } ;
struct TYPE_2__ {int (* reset ) (struct mmc_host*) ;} ;


 int stub1 (struct mmc_host*) ;

void mmc_pwrseq_reset(struct mmc_host *host)
{
 struct mmc_pwrseq *pwrseq = host->pwrseq;

 if (pwrseq && pwrseq->ops->reset)
  pwrseq->ops->reset(host);
}
