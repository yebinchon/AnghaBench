
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq_sd8787 {int reset_gpio; int pwrdn_gpio; } ;
struct mmc_host {int pwrseq; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct mmc_pwrseq_sd8787* to_pwrseq_sd8787 (int ) ;

__attribute__((used)) static void mmc_pwrseq_sd8787_power_off(struct mmc_host *host)
{
 struct mmc_pwrseq_sd8787 *pwrseq = to_pwrseq_sd8787(host->pwrseq);

 gpiod_set_value_cansleep(pwrseq->pwrdn_gpio, 0);
 gpiod_set_value_cansleep(pwrseq->reset_gpio, 0);
}
