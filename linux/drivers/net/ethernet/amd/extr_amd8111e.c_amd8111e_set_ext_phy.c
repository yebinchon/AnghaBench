
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct amd8111e_priv {int ext_phy_option; int ext_phy_addr; } ;


 int ADVERTISE_100BASE4 ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_ALL ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MII_ADVERTISE ;
 int MII_BMCR ;





 int amd8111e_mdio_read (struct net_device*,int ,int ) ;
 int amd8111e_mdio_write (struct net_device*,int ,int ,int) ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void amd8111e_set_ext_phy(struct net_device *dev)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 u32 bmcr,advert,tmp;


 advert = amd8111e_mdio_read(dev, lp->ext_phy_addr, MII_ADVERTISE);
 tmp = advert & ~(ADVERTISE_ALL | ADVERTISE_100BASE4);
 switch (lp->ext_phy_option){

  default:
  case 128:
   tmp |= ( ADVERTISE_10HALF|ADVERTISE_10FULL|
    ADVERTISE_100HALF|ADVERTISE_100FULL) ;
   break;
  case 129:
   tmp |= ADVERTISE_10HALF;
   break;
  case 130:
   tmp |= ADVERTISE_10FULL;
   break;
  case 131:
   tmp |= ADVERTISE_100HALF;
   break;
  case 132:
   tmp |= ADVERTISE_100FULL;
   break;
 }

 if(advert != tmp)
  amd8111e_mdio_write(dev, lp->ext_phy_addr, MII_ADVERTISE, tmp);

 bmcr = amd8111e_mdio_read(dev, lp->ext_phy_addr, MII_BMCR);
 bmcr |= (BMCR_ANENABLE | BMCR_ANRESTART);
 amd8111e_mdio_write(dev, lp->ext_phy_addr, MII_BMCR, bmcr);

}
