
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq_simple {int power_off_delay_us; int clk_enabled; int ext_clk; } ;
struct mmc_host {int pwrseq; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int mmc_pwrseq_simple_set_gpios_value (struct mmc_pwrseq_simple*,int) ;
 struct mmc_pwrseq_simple* to_pwrseq_simple (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mmc_pwrseq_simple_power_off(struct mmc_host *host)
{
 struct mmc_pwrseq_simple *pwrseq = to_pwrseq_simple(host->pwrseq);

 mmc_pwrseq_simple_set_gpios_value(pwrseq, 1);

 if (pwrseq->power_off_delay_us)
  usleep_range(pwrseq->power_off_delay_us,
   2 * pwrseq->power_off_delay_us);

 if (!IS_ERR(pwrseq->ext_clk) && pwrseq->clk_enabled) {
  clk_disable_unprepare(pwrseq->ext_clk);
  pwrseq->clk_enabled = 0;
 }
}
