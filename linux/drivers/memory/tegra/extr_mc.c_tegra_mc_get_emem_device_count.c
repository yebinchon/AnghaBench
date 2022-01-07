
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tegra_mc {int dummy; } ;


 int MC_EMEM_ADR_CFG ;
 unsigned int MC_EMEM_ADR_CFG_EMEM_NUMDEV ;
 unsigned int mc_readl (struct tegra_mc*,int ) ;

unsigned int tegra_mc_get_emem_device_count(struct tegra_mc *mc)
{
 u8 dram_count;

 dram_count = mc_readl(mc, MC_EMEM_ADR_CFG);
 dram_count &= MC_EMEM_ADR_CFG_EMEM_NUMDEV;
 dram_count++;

 return dram_count;
}
