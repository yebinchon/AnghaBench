
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_INT_BLK_GAP ;
 int SDHCI_INT_ENABLE ;

__attribute__((used)) static u32 esdhc_writel_fixup(struct sdhci_host *host,
         int spec_reg, u32 value, u32 old_value)
{
 u32 ret;






 if (spec_reg == SDHCI_INT_ENABLE)
  ret = value | SDHCI_INT_BLK_GAP;
 else
  ret = value;

 return ret;
}
