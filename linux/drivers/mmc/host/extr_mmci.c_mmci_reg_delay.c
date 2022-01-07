
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {int cclk; } ;


 int ndelay (int) ;
 int udelay (int) ;

__attribute__((used)) static void mmci_reg_delay(struct mmci_host *host)
{







 if (host->cclk < 25000000)
  udelay(30);
 else
  ndelay(120);
}
