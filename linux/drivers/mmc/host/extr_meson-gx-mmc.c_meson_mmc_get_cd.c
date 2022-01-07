
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int dummy; } ;


 int ENOSYS ;
 int mmc_gpio_get_cd (struct mmc_host*) ;

__attribute__((used)) static int meson_mmc_get_cd(struct mmc_host *mmc)
{
 int status = mmc_gpio_get_cd(mmc);

 if (status == -ENOSYS)
  return 1;

 return status;
}
