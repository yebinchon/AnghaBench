
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq_sd8787 {int pwrdn_gpio; int reset_gpio; } ;
struct mmc_host {int pwrseq; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 struct mmc_pwrseq_sd8787* to_pwrseq_sd8787 (int ) ;

__attribute__((used)) static void mmc_pwrseq_sd8787_pre_power_on(struct mmc_host *host)
{
 struct mmc_pwrseq_sd8787 *pwrseq = to_pwrseq_sd8787(host->pwrseq);

 gpiod_set_value_cansleep(pwrseq->reset_gpio, 1);

 msleep(300);
 gpiod_set_value_cansleep(pwrseq->pwrdn_gpio, 1);
}
