
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct ksz_device {TYPE_1__* dev_ops; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct TYPE_2__ {int (* phy_setup ) (struct ksz_device*,int,struct phy_device*) ;int (* port_setup ) (struct ksz_device*,int,int) ;} ;


 int dsa_is_user_port (struct dsa_switch*,int) ;
 int stub1 (struct ksz_device*,int,int) ;
 int stub2 (struct ksz_device*,int,struct phy_device*) ;

int ksz_enable_port(struct dsa_switch *ds, int port, struct phy_device *phy)
{
 struct ksz_device *dev = ds->priv;

 if (!dsa_is_user_port(ds, port))
  return 0;


 dev->dev_ops->port_setup(dev, port, 0);
 if (dev->dev_ops->phy_setup)
  dev->dev_ops->phy_setup(dev, port, phy);





 return 0;
}
