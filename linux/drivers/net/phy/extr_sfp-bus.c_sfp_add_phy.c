
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp_upstream_ops {int (* connect_phy ) (int ,struct phy_device*) ;} ;
struct sfp_bus {struct phy_device* phydev; int upstream; } ;
struct phy_device {int dummy; } ;


 struct sfp_upstream_ops* sfp_get_upstream_ops (struct sfp_bus*) ;
 int stub1 (int ,struct phy_device*) ;

int sfp_add_phy(struct sfp_bus *bus, struct phy_device *phydev)
{
 const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);
 int ret = 0;

 if (ops && ops->connect_phy)
  ret = ops->connect_phy(bus->upstream, phydev);

 if (ret == 0)
  bus->phydev = phydev;

 return ret;
}
