
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int mmc; } ;
struct sdhci_arasan_soc_ctl_field {int reg; int shift; scalar_t__ width; } ;
struct sdhci_arasan_data {TYPE_1__* soc_ctl_map; struct regmap* soc_ctl_base; } ;
struct regmap {int dummy; } ;
typedef int s16 ;
struct TYPE_2__ {scalar_t__ hiword_update; } ;


 int EINVAL ;
 int GENMASK (scalar_t__,int) ;
 int HIWORD_UPDATE (int,int ,int) ;
 int mmc_hostname (int ) ;
 int pr_warn (char*,int ,int) ;
 int regmap_update_bits (struct regmap*,int,int ,int) ;
 int regmap_write (struct regmap*,int,int ) ;
 struct sdhci_arasan_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int sdhci_arasan_syscon_write(struct sdhci_host *host,
       const struct sdhci_arasan_soc_ctl_field *fld,
       u32 val)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
 struct regmap *soc_ctl_base = sdhci_arasan->soc_ctl_base;
 u32 reg = fld->reg;
 u16 width = fld->width;
 s16 shift = fld->shift;
 int ret;







 if (shift < 0)
  return -EINVAL;

 if (sdhci_arasan->soc_ctl_map->hiword_update)
  ret = regmap_write(soc_ctl_base, reg,
       HIWORD_UPDATE(val, GENMASK(width, 0),
       shift));
 else
  ret = regmap_update_bits(soc_ctl_base, reg,
      GENMASK(shift + width, shift),
      val << shift);


 if (ret)
  pr_warn("%s: Regmap write fail: %d\n",
    mmc_hostname(host->mmc), ret);

 return ret;
}
