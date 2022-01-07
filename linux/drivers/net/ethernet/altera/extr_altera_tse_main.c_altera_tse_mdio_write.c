
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mii_bus {struct net_device* priv; } ;
struct altera_tse_private {int mac_dev; } ;


 int csrwr32 (int,int ,scalar_t__) ;
 int mdio_phy1 ;
 int mdio_phy1_addr ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 scalar_t__ tse_csroffs (int ) ;

__attribute__((used)) static int altera_tse_mdio_write(struct mii_bus *bus, int mii_id, int regnum,
     u16 value)
{
 struct net_device *ndev = bus->priv;
 struct altera_tse_private *priv = netdev_priv(ndev);


 csrwr32((mii_id & 0x1f), priv->mac_dev,
  tse_csroffs(mdio_phy1_addr));


 csrwr32(value, priv->mac_dev, tse_csroffs(mdio_phy1) + regnum * 4);
 return 0;
}
