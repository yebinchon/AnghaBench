
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int PHY_ADDR_REG ;
 int PHY_BUSY ;
 int PHY_DAT_REG ;
 int PHY_WRITE ;
 int arasan_phy_addr_poll (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static int arasan_phy_write(struct sdhci_host *host, u8 data, u8 offset)
{
 sdhci_writew(host, data, PHY_DAT_REG);
 sdhci_writew(host, (PHY_WRITE | offset), PHY_ADDR_REG);
 return arasan_phy_addr_poll(host, PHY_ADDR_REG, PHY_BUSY);
}
