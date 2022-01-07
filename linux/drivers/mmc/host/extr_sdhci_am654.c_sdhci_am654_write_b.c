
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; TYPE_2__* mmc; } ;
struct TYPE_3__ {unsigned char timing; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;






 int SDHCI_CTRL_HISPD ;
 int SDHCI_HOST_CONTROL ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_am654_write_b(struct sdhci_host *host, u8 val, int reg)
{
 unsigned char timing = host->mmc->ios.timing;

 if (reg == SDHCI_HOST_CONTROL) {
  switch (timing) {




  case 130:
  case 131:
  case 129:
  case 128:
   val &= ~SDHCI_CTRL_HISPD;
  }
 }

 writeb(val, host->ioaddr + reg);
}
