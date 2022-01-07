
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {void* bsp_priv; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void *get_stmmac_bsp_priv(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct stmmac_priv *priv = netdev_priv(ndev);

 return priv->plat->bsp_priv;
}
