
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int EBUSY ;
 int EN ;
 int IC_ENABLE ;
 int IC_ENABLE_STATUS ;
 unsigned int XGBE_DISABLE_COUNT ;
 unsigned int XI2C_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XI2C_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int xgbe_i2c_set_enable(struct xgbe_prv_data *pdata, bool enable)
{
 unsigned int wait = XGBE_DISABLE_COUNT;
 unsigned int mode = enable ? 1 : 0;

 while (wait--) {
  XI2C_IOWRITE_BITS(pdata, IC_ENABLE, EN, mode);
  if (XI2C_IOREAD_BITS(pdata, IC_ENABLE_STATUS, EN) == mode)
   return 0;

  usleep_range(100, 110);
 }

 return -EBUSY;
}
