
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct stk_camera {int dummy; } ;


 int MAX_RETRIES ;
 int STK_IIC_OP ;
 scalar_t__ STK_IIC_OP_RX ;
 int STK_IIC_RX_INDEX ;
 int STK_IIC_RX_VALUE ;
 int STK_IIC_STAT ;
 scalar_t__ STK_IIC_STAT_RX_OK ;
 int pr_err (char*,scalar_t__) ;
 scalar_t__ stk_camera_read_reg (struct stk_camera*,int ,scalar_t__*) ;
 scalar_t__ stk_camera_write_reg (struct stk_camera*,int ,scalar_t__) ;

__attribute__((used)) static int stk_sensor_inb(struct stk_camera *dev, u8 reg, u8 *val)
{
 int i = 0;
 u8 tmpval = 0;

 if (stk_camera_write_reg(dev, STK_IIC_RX_INDEX, reg))
  return 1;
 if (stk_camera_write_reg(dev, STK_IIC_OP, STK_IIC_OP_RX))
  return 1;
 do {
  if (stk_camera_read_reg(dev, STK_IIC_STAT, &tmpval))
   return 1;
  i++;
 } while (tmpval == 0 && i < MAX_RETRIES);
 if (tmpval != STK_IIC_STAT_RX_OK) {
  if (tmpval)
   pr_err("stk_sensor_inb failed, status=0x%02x\n",
          tmpval);
  return 1;
 }

 if (stk_camera_read_reg(dev, STK_IIC_RX_VALUE, &tmpval))
  return 1;

 *val = tmpval;
 return 0;
}
