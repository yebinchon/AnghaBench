
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; } ;
struct net_device {struct phy_device* phydev; } ;
struct gfar_private {struct net_device* ndev; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int GFAR_100_TIME ;
 unsigned int GFAR_10_TIME ;
 unsigned int GFAR_GBIT_TIME ;




__attribute__((used)) static unsigned int gfar_usecs2ticks(struct gfar_private *priv,
         unsigned int usecs)
{
 struct net_device *ndev = priv->ndev;
 struct phy_device *phydev = ndev->phydev;
 unsigned int count;


 switch (phydev->speed) {
 case 128:
  count = GFAR_GBIT_TIME;
  break;
 case 129:
  count = GFAR_100_TIME;
  break;
 case 130:
 default:
  count = GFAR_10_TIME;
  break;
 }



 return DIV_ROUND_UP(usecs * 1000, count);
}
