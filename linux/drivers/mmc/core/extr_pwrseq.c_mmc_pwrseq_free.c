
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq {int owner; } ;
struct mmc_host {struct mmc_pwrseq* pwrseq; } ;


 int module_put (int ) ;

void mmc_pwrseq_free(struct mmc_host *host)
{
 struct mmc_pwrseq *pwrseq = host->pwrseq;

 if (pwrseq) {
  module_put(pwrseq->owner);
  host->pwrseq = ((void*)0);
 }
}
