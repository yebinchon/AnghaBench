
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_CTRL_V4_MODE ;
 int SDHCI_HOST_CONTROL2 ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_do_enable_v4_mode(struct sdhci_host *host)
{
 u16 ctrl2;

 ctrl2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 if (ctrl2 & SDHCI_CTRL_V4_MODE)
  return;

 ctrl2 |= SDHCI_CTRL_V4_MODE;
 sdhci_writew(host, ctrl2, SDHCI_HOST_CONTROL2);
}
