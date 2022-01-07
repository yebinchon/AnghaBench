
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phylink {TYPE_2__* phydev; } ;
struct mii_ioctl_data {int val_out; int val_in; int reg_num; int phy_id; } ;
struct ifreq {int dummy; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int phy_mii_ioctl (TYPE_2__*,struct ifreq*,int) ;
 int phylink_mii_read (struct phylink*,int ,int ) ;
 int phylink_mii_write (struct phylink*,int ,int ,int ) ;
 int phylink_phy_read (struct phylink*,int ,int ) ;
 int phylink_phy_write (struct phylink*,int ,int ,int ) ;

int phylink_mii_ioctl(struct phylink *pl, struct ifreq *ifr, int cmd)
{
 struct mii_ioctl_data *mii = if_mii(ifr);
 int ret;

 ASSERT_RTNL();

 if (pl->phydev) {

  switch (cmd) {
  case 130:
   mii->phy_id = pl->phydev->mdio.addr;


  case 129:
   ret = phylink_phy_read(pl, mii->phy_id, mii->reg_num);
   if (ret >= 0) {
    mii->val_out = ret;
    ret = 0;
   }
   break;

  case 128:
   ret = phylink_phy_write(pl, mii->phy_id, mii->reg_num,
      mii->val_in);
   break;

  default:
   ret = phy_mii_ioctl(pl->phydev, ifr, cmd);
   break;
  }
 } else {
  switch (cmd) {
  case 130:
   mii->phy_id = 0;


  case 129:
   ret = phylink_mii_read(pl, mii->phy_id, mii->reg_num);
   if (ret >= 0) {
    mii->val_out = ret;
    ret = 0;
   }
   break;

  case 128:
   ret = phylink_mii_write(pl, mii->phy_id, mii->reg_num,
      mii->val_in);
   break;

  default:
   ret = -EOPNOTSUPP;
   break;
  }
 }

 return ret;
}
