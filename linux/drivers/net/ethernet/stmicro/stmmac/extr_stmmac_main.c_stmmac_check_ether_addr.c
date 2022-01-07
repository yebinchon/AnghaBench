
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* dev; int device; int hw; } ;
struct TYPE_2__ {int dev_addr; } ;


 int dev_info (int ,char*,int ) ;
 int eth_hw_addr_random (TYPE_1__*) ;
 int is_valid_ether_addr (int ) ;
 int stmmac_get_umac_addr (struct stmmac_priv*,int ,int ,int ) ;

__attribute__((used)) static void stmmac_check_ether_addr(struct stmmac_priv *priv)
{
 if (!is_valid_ether_addr(priv->dev->dev_addr)) {
  stmmac_get_umac_addr(priv, priv->hw, priv->dev->dev_addr, 0);
  if (!is_valid_ether_addr(priv->dev->dev_addr))
   eth_hw_addr_random(priv->dev);
  dev_info(priv->device, "device MAC address %pM\n",
    priv->dev->dev_addr);
 }
}
