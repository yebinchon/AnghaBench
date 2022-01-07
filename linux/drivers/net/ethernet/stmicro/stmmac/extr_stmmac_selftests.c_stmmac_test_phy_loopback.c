
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* dev; } ;
struct stmmac_packet_attrs {int dst; } ;
struct TYPE_2__ {int phydev; int dev_addr; } ;


 int EBUSY ;
 int __stmmac_test_loopback (struct stmmac_priv*,struct stmmac_packet_attrs*) ;
 int phy_loopback (int ,int) ;

__attribute__((used)) static int stmmac_test_phy_loopback(struct stmmac_priv *priv)
{
 struct stmmac_packet_attrs attr = { };
 int ret;

 if (!priv->dev->phydev)
  return -EBUSY;

 ret = phy_loopback(priv->dev->phydev, 1);
 if (ret)
  return ret;

 attr.dst = priv->dev->dev_addr;
 ret = __stmmac_test_loopback(priv, &attr);

 phy_loopback(priv->dev->phydev, 0);
 return ret;
}
