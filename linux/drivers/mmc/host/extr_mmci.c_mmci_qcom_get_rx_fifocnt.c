
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmci_host {TYPE_1__* variant; } ;
struct TYPE_2__ {int fifohalfsize; } ;


 int MCI_RXDATAAVLBL ;
 int MCI_RXFIFOHALFFULL ;

__attribute__((used)) static int mmci_qcom_get_rx_fifocnt(struct mmci_host *host, u32 status, int r)
{




 if (status & MCI_RXFIFOHALFFULL)
  return host->variant->fifohalfsize;
 else if (status & MCI_RXDATAAVLBL)
  return 4;

 return 0;
}
