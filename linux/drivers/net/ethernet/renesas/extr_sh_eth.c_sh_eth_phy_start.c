
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;


 int phy_start (int ) ;
 int sh_eth_phy_init (struct net_device*) ;

__attribute__((used)) static int sh_eth_phy_start(struct net_device *ndev)
{
 int ret;

 ret = sh_eth_phy_init(ndev);
 if (ret)
  return ret;

 phy_start(ndev->phydev);

 return 0;
}
