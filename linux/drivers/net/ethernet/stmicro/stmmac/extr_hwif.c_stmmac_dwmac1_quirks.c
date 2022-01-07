
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {scalar_t__ synopsys_id; int extend_desc; int device; TYPE_1__* plat; struct mac_device_info* hw; } ;
struct mac_device_info {int * desc; } ;
struct TYPE_2__ {scalar_t__ enh_desc; } ;


 scalar_t__ DWMAC_CORE_3_50 ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int enh_desc_ops ;
 int ndesc_ops ;
 int stmmac_dwmac_mode_quirk (struct stmmac_priv*) ;

__attribute__((used)) static int stmmac_dwmac1_quirks(struct stmmac_priv *priv)
{
 struct mac_device_info *mac = priv->hw;

 if (priv->plat->enh_desc) {
  dev_info(priv->device, "Enhanced/Alternate descriptors\n");


  if (priv->synopsys_id >= DWMAC_CORE_3_50) {
   dev_info(priv->device, "Enabled extended descriptors\n");
   priv->extend_desc = 1;
  } else {
   dev_warn(priv->device, "Extended descriptors not supported\n");
  }

  mac->desc = &enh_desc_ops;
 } else {
  dev_info(priv->device, "Normal descriptors\n");
  mac->desc = &ndesc_ops;
 }

 stmmac_dwmac_mode_quirk(priv);
 return 0;
}
