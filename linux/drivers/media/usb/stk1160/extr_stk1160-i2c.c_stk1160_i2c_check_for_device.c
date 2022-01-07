
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int dummy; } ;


 int ENODEV ;
 int STK1160_SBUSR_RA ;
 int STK1160_SICTL ;
 int STK1160_SICTL_SDA ;
 int stk1160_i2c_busy_wait (struct stk1160*,int) ;
 int stk1160_write_reg (struct stk1160*,int ,int) ;

__attribute__((used)) static int stk1160_i2c_check_for_device(struct stk1160 *dev,
  unsigned char addr)
{
 int rc;


 rc = stk1160_write_reg(dev, STK1160_SICTL_SDA, addr);
 if (rc < 0)
  return rc;


 rc = stk1160_write_reg(dev, STK1160_SBUSR_RA, 0x00);
 if (rc < 0)
  return rc;


 rc = stk1160_write_reg(dev, STK1160_SICTL, 0x20);
 if (rc < 0)
  return rc;

 rc = stk1160_i2c_busy_wait(dev, 0x01);
 if (rc < 0)
  return -ENODEV;

 return 0;
}
