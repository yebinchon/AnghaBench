
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int mode; int device; scalar_t__ chain_mode; struct mac_device_info* hw; } ;
struct mac_device_info {int * mode; } ;


 int STMMAC_CHAIN_MODE ;
 int STMMAC_RING_MODE ;
 int chain_mode_ops ;
 int dev_info (int ,char*) ;
 int ring_mode_ops ;

__attribute__((used)) static void stmmac_dwmac_mode_quirk(struct stmmac_priv *priv)
{
 struct mac_device_info *mac = priv->hw;

 if (priv->chain_mode) {
  dev_info(priv->device, "Chain mode enabled\n");
  priv->mode = STMMAC_CHAIN_MODE;
  mac->mode = &chain_mode_ops;
 } else {
  dev_info(priv->device, "Ring mode enabled\n");
  priv->mode = STMMAC_RING_MODE;
  mac->mode = &ring_mode_ops;
 }
}
