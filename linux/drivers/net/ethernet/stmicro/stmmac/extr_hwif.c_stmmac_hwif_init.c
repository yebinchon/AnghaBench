
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stmmac_priv {scalar_t__ synopsys_id; int device; int hwif_quirks; scalar_t__ ioaddr; scalar_t__ mmcaddr; scalar_t__ ptpaddr; struct mac_device_info* hw; TYPE_1__* plat; } ;
struct TYPE_4__ {scalar_t__ mmc_off; scalar_t__ ptp_off; } ;
struct stmmac_hwif_entry {int gmac; int gmac4; int xgmac; scalar_t__ min_id; int (* setup ) (struct stmmac_priv*) ;int quirks; TYPE_2__ regs; scalar_t__ mmc; scalar_t__ tc; scalar_t__ mode; scalar_t__ hwtimestamp; scalar_t__ mac; scalar_t__ dma; scalar_t__ desc; } ;
struct mac_device_info {scalar_t__ mmc; scalar_t__ tc; scalar_t__ mode; scalar_t__ ptp; scalar_t__ mac; scalar_t__ dma; scalar_t__ desc; } ;
struct TYPE_3__ {int has_xgmac; int has_gmac4; int has_gmac; struct mac_device_info* (* setup ) (struct stmmac_priv*) ;} ;


 int ARRAY_SIZE (struct stmmac_hwif_entry*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GMAC4_VERSION ;
 int GMAC_VERSION ;
 scalar_t__ MMC_GMAC3_X_OFFSET ;
 scalar_t__ MMC_GMAC4_OFFSET ;
 scalar_t__ PTP_GMAC3_X_OFFSET ;
 scalar_t__ PTP_GMAC4_OFFSET ;
 int dev_err (int ,char*,scalar_t__,int,int) ;
 struct mac_device_info* devm_kzalloc (int ,int,int ) ;
 scalar_t__ stmmac_get_id (struct stmmac_priv*,int ) ;
 struct stmmac_hwif_entry* stmmac_hw ;
 struct mac_device_info* stub1 (struct stmmac_priv*) ;
 int stub2 (struct stmmac_priv*) ;

int stmmac_hwif_init(struct stmmac_priv *priv)
{
 bool needs_xgmac = priv->plat->has_xgmac;
 bool needs_gmac4 = priv->plat->has_gmac4;
 bool needs_gmac = priv->plat->has_gmac;
 const struct stmmac_hwif_entry *entry;
 struct mac_device_info *mac;
 bool needs_setup = 1;
 int i, ret;
 u32 id;

 if (needs_gmac) {
  id = stmmac_get_id(priv, GMAC_VERSION);
 } else if (needs_gmac4 || needs_xgmac) {
  id = stmmac_get_id(priv, GMAC4_VERSION);
 } else {
  id = 0;
 }


 priv->synopsys_id = id;


 priv->ptpaddr = priv->ioaddr +
  (needs_gmac4 ? PTP_GMAC4_OFFSET : PTP_GMAC3_X_OFFSET);
 priv->mmcaddr = priv->ioaddr +
  (needs_gmac4 ? MMC_GMAC4_OFFSET : MMC_GMAC3_X_OFFSET);


 if (priv->plat->setup) {
  mac = priv->plat->setup(priv);
  needs_setup = 0;
 } else {
  mac = devm_kzalloc(priv->device, sizeof(*mac), GFP_KERNEL);
 }

 if (!mac)
  return -ENOMEM;


 for (i = ARRAY_SIZE(stmmac_hw) - 1; i >= 0; i--) {
  entry = &stmmac_hw[i];

  if (needs_gmac ^ entry->gmac)
   continue;
  if (needs_gmac4 ^ entry->gmac4)
   continue;
  if (needs_xgmac ^ entry->xgmac)
   continue;

  if (priv->synopsys_id < entry->min_id)
   continue;


  mac->desc = mac->desc ? : entry->desc;
  mac->dma = mac->dma ? : entry->dma;
  mac->mac = mac->mac ? : entry->mac;
  mac->ptp = mac->ptp ? : entry->hwtimestamp;
  mac->mode = mac->mode ? : entry->mode;
  mac->tc = mac->tc ? : entry->tc;
  mac->mmc = mac->mmc ? : entry->mmc;

  priv->hw = mac;
  priv->ptpaddr = priv->ioaddr + entry->regs.ptp_off;
  priv->mmcaddr = priv->ioaddr + entry->regs.mmc_off;


  if (needs_setup) {
   ret = entry->setup(priv);
   if (ret)
    return ret;
  }


  priv->hwif_quirks = entry->quirks;
  return 0;
 }

 dev_err(priv->device, "Failed to find HW IF (id=0x%x, gmac=%d/%d)\n",
   id, needs_gmac, needs_gmac4);
 return -EINVAL;
}
