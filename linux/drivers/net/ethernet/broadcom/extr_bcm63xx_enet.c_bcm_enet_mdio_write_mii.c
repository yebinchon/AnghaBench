
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int bcm_enet_mdio_write (int ,int,int,int) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcm_enet_mdio_write_mii(struct net_device *dev, int mii_id,
        int regnum, int value)
{
 bcm_enet_mdio_write(netdev_priv(dev), mii_id, regnum, value);
}
