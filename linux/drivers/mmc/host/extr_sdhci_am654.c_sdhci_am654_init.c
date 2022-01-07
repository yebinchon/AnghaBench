
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct sdhci_am654_data {int flags; int base; } ;
struct TYPE_2__ {int caps; } ;


 int CALDONE_MASK ;
 int CTL_CFG_2 ;
 int DLL_PRESENT ;
 int IOMUX_ENABLE_MASK ;
 int IOMUX_PRESENT ;
 int MMC_CAP_NONREMOVABLE ;
 int OTAPDLYENA_MASK ;
 int OTAPDLYSEL_MASK ;
 int PDB_MASK ;
 int PHY_CTRL1 ;
 int PHY_CTRL4 ;
 int PHY_STAT1 ;
 int SLOTTYPE_EMBEDDED ;
 int SLOTTYPE_MASK ;
 int regmap_read (int ,int ,int*) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int sdhci_add_host (struct sdhci_host*) ;
 struct sdhci_am654_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_am654_init(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_am654_data *sdhci_am654 = sdhci_pltfm_priv(pltfm_host);
 u32 ctl_cfg_2 = 0;
 u32 mask;
 u32 val;
 int ret;


 mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
 regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, 0x0);

 if (sdhci_am654->flags & DLL_PRESENT) {
  regmap_read(sdhci_am654->base, PHY_STAT1, &val);
  if (~val & CALDONE_MASK) {

   regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
        PDB_MASK, PDB_MASK);
   ret = regmap_read_poll_timeout(sdhci_am654->base,
             PHY_STAT1, val,
             val & CALDONE_MASK,
             1, 20);
   if (ret)
    return ret;
  }
 }


 if (sdhci_am654->flags & IOMUX_PRESENT)
  regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
       IOMUX_ENABLE_MASK, 0);


 if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
  ctl_cfg_2 = SLOTTYPE_EMBEDDED;

 regmap_update_bits(sdhci_am654->base, CTL_CFG_2, SLOTTYPE_MASK,
      ctl_cfg_2);

 return sdhci_add_host(host);
}
