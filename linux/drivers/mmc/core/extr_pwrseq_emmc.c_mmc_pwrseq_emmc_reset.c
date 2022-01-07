
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq_emmc {int reset_gpio; } ;
struct mmc_host {int pwrseq; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 struct mmc_pwrseq_emmc* to_pwrseq_emmc (int ) ;
 int udelay (int) ;

__attribute__((used)) static void mmc_pwrseq_emmc_reset(struct mmc_host *host)
{
 struct mmc_pwrseq_emmc *pwrseq = to_pwrseq_emmc(host->pwrseq);

 gpiod_set_value_cansleep(pwrseq->reset_gpio, 1);
 udelay(1);
 gpiod_set_value_cansleep(pwrseq->reset_gpio, 0);
 udelay(200);
}
