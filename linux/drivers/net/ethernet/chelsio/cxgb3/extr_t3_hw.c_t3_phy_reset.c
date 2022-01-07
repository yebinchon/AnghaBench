
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_CTRL1 ;
 int MDIO_CTRL1_LPOWER ;
 unsigned int MDIO_CTRL1_RESET ;
 int msleep (int) ;
 int t3_mdio_change_bits (struct cphy*,int,int ,int ,unsigned int) ;
 int t3_mdio_read (struct cphy*,int,int ,unsigned int*) ;

int t3_phy_reset(struct cphy *phy, int mmd, int wait)
{
 int err;
 unsigned int ctl;

 err = t3_mdio_change_bits(phy, mmd, MDIO_CTRL1, MDIO_CTRL1_LPOWER,
      MDIO_CTRL1_RESET);
 if (err || !wait)
  return err;

 do {
  err = t3_mdio_read(phy, mmd, MDIO_CTRL1, &ctl);
  if (err)
   return err;
  ctl &= MDIO_CTRL1_RESET;
  if (ctl)
   msleep(1);
 } while (ctl && --wait);

 return ctl ? -1 : 0;
}
