
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;


 int EIO ;
 int PMT_CTRL ;
 unsigned int PMT_CTRL_PHY_RST_ ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int hw ;
 int msleep (int) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static int smsc911x_phy_reset(struct smsc911x_data *pdata)
{
 unsigned int temp;
 unsigned int i = 100000;

 temp = smsc911x_reg_read(pdata, PMT_CTRL);
 smsc911x_reg_write(pdata, PMT_CTRL, temp | PMT_CTRL_PHY_RST_);
 do {
  msleep(1);
  temp = smsc911x_reg_read(pdata, PMT_CTRL);
 } while ((i--) && (temp & PMT_CTRL_PHY_RST_));

 if (unlikely(temp & PMT_CTRL_PHY_RST_)) {
  SMSC_WARN(pdata, hw, "PHY reset failed to complete");
  return -EIO;
 }



 msleep(1);

 return 0;
}
