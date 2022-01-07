
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct nic {TYPE_1__ mii; int netdev; } ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int MII_ADVERTISE ;
 scalar_t__ MII_BMCR ;
 scalar_t__ mdi_write ;
 int mdio_ctrl_hw (struct nic*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int mdio_read (int ,int ,int ) ;

__attribute__((used)) static u16 mdio_ctrl_phy_82552_v(struct nic *nic,
     u32 addr,
     u32 dir,
     u32 reg,
     u16 data)
{
 if ((reg == MII_BMCR) && (dir == mdi_write)) {
  if (data & (BMCR_ANRESTART | BMCR_ANENABLE)) {
   u16 advert = mdio_read(nic->netdev, nic->mii.phy_id,
       MII_ADVERTISE);





   if (advert & ADVERTISE_100FULL)
    data |= BMCR_SPEED100 | BMCR_FULLDPLX;
   else if (advert & ADVERTISE_100HALF)
    data |= BMCR_SPEED100;
  }
 }
 return mdio_ctrl_hw(nic, addr, dir, reg, data);
}
