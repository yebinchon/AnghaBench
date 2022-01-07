
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct amd8111e_priv {int dummy; } ;


 int amd8111e_write_phy (struct amd8111e_priv*,int,int,int) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void amd8111e_mdio_write(struct net_device *dev,
    int phy_id, int reg_num, int val)
{
 struct amd8111e_priv *lp = netdev_priv(dev);

 amd8111e_write_phy(lp, phy_id, reg_num, val);
}
