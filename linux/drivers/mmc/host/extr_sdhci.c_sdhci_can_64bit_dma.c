
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ version; int caps; scalar_t__ v4_mode; } ;


 int SDHCI_CAN_64BIT ;
 int SDHCI_CAN_64BIT_V4 ;
 scalar_t__ SDHCI_SPEC_410 ;

__attribute__((used)) static inline bool sdhci_can_64bit_dma(struct sdhci_host *host)
{





 if (host->version >= SDHCI_SPEC_410 && host->v4_mode)
  return host->caps & SDHCI_CAN_64BIT_V4;

 return host->caps & SDHCI_CAN_64BIT;
}
