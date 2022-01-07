
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk1160 {int dummy; } ;


 int STK1160_SBUSW_WA ;
 int STK1160_SBUSW_WD ;
 int STK1160_SICTL ;
 int STK1160_SICTL_SDA ;
 int stk1160_i2c_busy_wait (struct stk1160*,int) ;
 int stk1160_write_reg (struct stk1160*,int ,int) ;

__attribute__((used)) static int stk1160_i2c_write_reg(struct stk1160 *dev, u8 addr,
  u8 reg, u8 value)
{
 int rc;


 rc = stk1160_write_reg(dev, STK1160_SICTL_SDA, addr);
 if (rc < 0)
  return rc;


 rc = stk1160_write_reg(dev, STK1160_SBUSW_WA, reg);
 if (rc < 0)
  return rc;


 rc = stk1160_write_reg(dev, STK1160_SBUSW_WD, value);
 if (rc < 0)
  return rc;


 rc = stk1160_write_reg(dev, STK1160_SICTL, 0x01);
 if (rc < 0)
  return rc;

 rc = stk1160_i2c_busy_wait(dev, 0x04);
 if (rc < 0)
  return rc;

 return 0;
}
