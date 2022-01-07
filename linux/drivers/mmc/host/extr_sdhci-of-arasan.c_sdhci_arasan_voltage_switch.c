
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;


 int EINVAL ;




__attribute__((used)) static int sdhci_arasan_voltage_switch(struct mmc_host *mmc,
           struct mmc_ios *ios)
{
 switch (ios->signal_voltage) {
 case 129:







  return 0;
 case 128:
 case 130:

  break;
 }

 return -EINVAL;
}
