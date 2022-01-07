
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk1160 {int dummy; } ;


 int ETIMEDOUT ;
 int STK1160_I2C_TIMEOUT ;
 scalar_t__ STK1160_SICTL ;
 int USEC_PER_MSEC ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int stk1160_read_reg (struct stk1160*,scalar_t__,int*) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int stk1160_i2c_busy_wait(struct stk1160 *dev, u8 wait_bit_mask)
{
 unsigned long end;
 u8 flag;


 end = jiffies + msecs_to_jiffies(STK1160_I2C_TIMEOUT);
 while (time_is_after_jiffies(end)) {

  stk1160_read_reg(dev, STK1160_SICTL+1, &flag);

  if (flag & wait_bit_mask)
   goto done;

  usleep_range(10 * USEC_PER_MSEC, 20 * USEC_PER_MSEC);
 }

 return -ETIMEDOUT;

done:
 return 0;
}
