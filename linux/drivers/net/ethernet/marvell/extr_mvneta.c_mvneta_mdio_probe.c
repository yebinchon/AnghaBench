
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvneta_port {TYPE_1__* dev; int phylink; int dn; } ;
struct ethtool_wolinfo {int supported; int cmd; } ;
struct TYPE_2__ {int dev; } ;


 int ETHTOOL_GWOL ;
 int device_set_wakeup_capable (int *,int) ;
 int netdev_err (TYPE_1__*,char*,int) ;
 int phylink_ethtool_get_wol (int ,struct ethtool_wolinfo*) ;
 int phylink_of_phy_connect (int ,int ,int ) ;

__attribute__((used)) static int mvneta_mdio_probe(struct mvneta_port *pp)
{
 struct ethtool_wolinfo wol = { .cmd = ETHTOOL_GWOL };
 int err = phylink_of_phy_connect(pp->phylink, pp->dn, 0);

 if (err)
  netdev_err(pp->dev, "could not attach PHY: %d\n", err);

 phylink_ethtool_get_wol(pp->phylink, &wol);
 device_set_wakeup_capable(&pp->dev->dev, !!wol.supported);

 return err;
}
