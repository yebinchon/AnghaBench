
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;


 int GPIO_CFG ;
 unsigned int GPIO_CFG_EEPR_EN_ ;
 int msleep (int) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,unsigned int) ;

__attribute__((used)) static void smsc911x_eeprom_enable_access(struct smsc911x_data *pdata)
{
 unsigned int temp = smsc911x_reg_read(pdata, GPIO_CFG);
 temp &= ~GPIO_CFG_EEPR_EN_;
 smsc911x_reg_write(pdata, GPIO_CFG, temp);
 msleep(1);
}
