
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;


 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void adjust_link(struct net_device *ndev)
{
 struct phy_device *phydev = ndev->phydev;

 phy_print_status(phydev);
}
