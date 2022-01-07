
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_1__* host; } ;
struct TYPE_2__ {int caps; } ;


 int SDHCI_CAN_DO_HISPD ;
 int SDHCI_CAN_DO_SDMA ;
 int SDHCI_CAN_VDD_330 ;
 int SDHCI_CLOCK_BASE_MASK ;
 int SDHCI_CLOCK_BASE_SHIFT ;
 int SDHCI_TIMEOUT_CLK_MASK ;
 int SDHCI_TIMEOUT_CLK_SHIFT ;
 int SDHCI_TIMEOUT_CLK_UNIT ;

__attribute__((used)) static int ricoh_mmc_probe_slot(struct sdhci_pci_slot *slot)
{
 slot->host->caps =
  ((0x21 << SDHCI_TIMEOUT_CLK_SHIFT)
   & SDHCI_TIMEOUT_CLK_MASK) |

  ((0x21 << SDHCI_CLOCK_BASE_SHIFT)
   & SDHCI_CLOCK_BASE_MASK) |

  SDHCI_TIMEOUT_CLK_UNIT |
  SDHCI_CAN_VDD_330 |
  SDHCI_CAN_DO_HISPD |
  SDHCI_CAN_DO_SDMA;
 return 0;
}
