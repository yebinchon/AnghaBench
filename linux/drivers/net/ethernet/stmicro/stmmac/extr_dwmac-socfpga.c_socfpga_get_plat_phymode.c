
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* plat; } ;
struct socfpga_dwmac {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int interface; } ;


 struct net_device* dev_get_drvdata (int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int socfpga_get_plat_phymode(struct socfpga_dwmac *dwmac)
{
 struct net_device *ndev = dev_get_drvdata(dwmac->dev);
 struct stmmac_priv *priv = netdev_priv(ndev);

 return priv->plat->interface;
}
