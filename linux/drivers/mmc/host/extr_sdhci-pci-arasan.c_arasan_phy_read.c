
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int DATA_MASK ;
 int PHY_ADDR_REG ;
 int PHY_BUSY ;
 int PHY_DAT_REG ;
 int arasan_phy_addr_poll (struct sdhci_host*,int ,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writew (struct sdhci_host*,int,int ) ;

__attribute__((used)) static int arasan_phy_read(struct sdhci_host *host, u8 offset, u8 *data)
{
 int ret;

 sdhci_writew(host, 0, PHY_DAT_REG);
 sdhci_writew(host, offset, PHY_ADDR_REG);
 ret = arasan_phy_addr_poll(host, PHY_ADDR_REG, PHY_BUSY);


 *data = sdhci_readw(host, PHY_DAT_REG) & DATA_MASK;
 return ret;
}
