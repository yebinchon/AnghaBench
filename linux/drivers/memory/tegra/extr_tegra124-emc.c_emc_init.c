
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_emc {int dram_type; int last_timing; int mc; int dram_num; scalar_t__ regs; } ;


 scalar_t__ EMC_FBIO_CFG5 ;
 int EMC_FBIO_CFG5_DRAM_TYPE_MASK ;
 int EMC_FBIO_CFG5_DRAM_TYPE_SHIFT ;
 int emc_read_current_timing (struct tegra_emc*,int *) ;
 int readl (scalar_t__) ;
 int tegra_mc_get_emem_device_count (int ) ;

__attribute__((used)) static int emc_init(struct tegra_emc *emc)
{
 emc->dram_type = readl(emc->regs + EMC_FBIO_CFG5);
 emc->dram_type &= EMC_FBIO_CFG5_DRAM_TYPE_MASK;
 emc->dram_type >>= EMC_FBIO_CFG5_DRAM_TYPE_SHIFT;

 emc->dram_num = tegra_mc_get_emem_device_count(emc->mc);

 emc_read_current_timing(emc, &emc->last_timing);

 return 0;
}
