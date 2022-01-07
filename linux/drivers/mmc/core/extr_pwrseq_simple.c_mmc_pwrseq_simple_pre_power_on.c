
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq_simple {int clk_enabled; int ext_clk; } ;
struct mmc_host {int pwrseq; } ;


 int IS_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int mmc_pwrseq_simple_set_gpios_value (struct mmc_pwrseq_simple*,int) ;
 struct mmc_pwrseq_simple* to_pwrseq_simple (int ) ;

__attribute__((used)) static void mmc_pwrseq_simple_pre_power_on(struct mmc_host *host)
{
 struct mmc_pwrseq_simple *pwrseq = to_pwrseq_simple(host->pwrseq);

 if (!IS_ERR(pwrseq->ext_clk) && !pwrseq->clk_enabled) {
  clk_prepare_enable(pwrseq->ext_clk);
  pwrseq->clk_enabled = 1;
 }

 mmc_pwrseq_simple_set_gpios_value(pwrseq, 1);
}
