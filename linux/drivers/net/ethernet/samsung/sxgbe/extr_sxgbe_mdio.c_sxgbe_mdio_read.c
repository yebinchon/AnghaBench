
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sxgbe_priv_data {TYPE_2__* hw; scalar_t__ ioaddr; } ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ mii; } ;


 int SXGBE_SMA_READ_CMD ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int sxgbe_mdio_access (struct sxgbe_priv_data*,int ,int,int,int ) ;

__attribute__((used)) static int sxgbe_mdio_read(struct mii_bus *bus, int phyaddr, int phyreg)
{
 struct net_device *ndev = bus->priv;
 struct sxgbe_priv_data *priv = netdev_priv(ndev);
 int rc;

 rc = sxgbe_mdio_access(priv, SXGBE_SMA_READ_CMD, phyaddr, phyreg, 0);
 if (rc < 0)
  return rc;

 return readl(priv->ioaddr + priv->hw->mii.data) & 0xffff;
}
