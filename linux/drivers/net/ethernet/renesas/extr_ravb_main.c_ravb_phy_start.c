
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;


 int phy_start (int ) ;
 int ravb_phy_init (struct net_device*) ;

__attribute__((used)) static int ravb_phy_start(struct net_device *ndev)
{
 int error;

 error = ravb_phy_init(ndev);
 if (error)
  return error;

 phy_start(ndev->phydev);

 return 0;
}
