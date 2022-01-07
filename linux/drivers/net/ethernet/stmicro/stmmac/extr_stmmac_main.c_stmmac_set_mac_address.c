
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int hw; } ;
struct net_device {int dev_addr; } ;


 int eth_mac_addr (struct net_device*,void*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_set_umac_addr (struct stmmac_priv*,int ,int ,int ) ;

__attribute__((used)) static int stmmac_set_mac_address(struct net_device *ndev, void *addr)
{
 struct stmmac_priv *priv = netdev_priv(ndev);
 int ret = 0;

 ret = eth_mac_addr(ndev, addr);
 if (ret)
  return ret;

 stmmac_set_umac_addr(priv, priv->hw, ndev->dev_addr, 0);

 return ret;
}
