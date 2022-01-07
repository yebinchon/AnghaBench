
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int flags; } ;
struct mmc_host {int dummy; } ;


 int INT_EN ;
 int clear_bit (int ,int *) ;
 struct ushc_data* mmc_priv (struct mmc_host*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ushc_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct ushc_data *ushc = mmc_priv(mmc);

 if (enable)
  set_bit(INT_EN, &ushc->flags);
 else
  clear_bit(INT_EN, &ushc->flags);
}
