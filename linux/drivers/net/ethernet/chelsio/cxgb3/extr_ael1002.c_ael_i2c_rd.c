
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct cphy {TYPE_1__ mdio; int adapter; } ;


 int AEL_I2C_CTRL ;
 int AEL_I2C_DATA ;
 int AEL_I2C_STAT ;
 int CH_WARN (int ,char*,int ,int,int) ;
 int ETIMEDOUT ;
 int MDIO_MMD_PMAPMD ;
 int msleep (int) ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int t3_mdio_write (struct cphy*,int ,int ,int) ;

__attribute__((used)) static int ael_i2c_rd(struct cphy *phy, int dev_addr, int word_addr)
{
 int i, err;
 unsigned int stat, data;

 err = t3_mdio_write(phy, MDIO_MMD_PMAPMD, AEL_I2C_CTRL,
       (dev_addr << 8) | (1 << 8) | word_addr);
 if (err)
  return err;

 for (i = 0; i < 200; i++) {
  msleep(1);
  err = t3_mdio_read(phy, MDIO_MMD_PMAPMD, AEL_I2C_STAT, &stat);
  if (err)
   return err;
  if ((stat & 3) == 1) {
   err = t3_mdio_read(phy, MDIO_MMD_PMAPMD, AEL_I2C_DATA,
        &data);
   if (err)
    return err;
   return data >> 8;
  }
 }
 CH_WARN(phy->adapter, "PHY %u i2c read of dev.addr %#x.%#x timed out\n",
  phy->mdio.prtad, dev_addr, word_addr);
 return -ETIMEDOUT;
}
