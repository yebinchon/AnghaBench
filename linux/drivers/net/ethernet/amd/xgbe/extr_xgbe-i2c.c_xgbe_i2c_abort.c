
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int ABORT ;
 int EBUSY ;
 int EN ;
 int IC_ENABLE ;
 unsigned int XGBE_ABORT_COUNT ;
 int XI2C_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XI2C_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int xgbe_i2c_abort(struct xgbe_prv_data *pdata)
{
 unsigned int wait = XGBE_ABORT_COUNT;


 XI2C_IOWRITE_BITS(pdata, IC_ENABLE, EN, 1);


 XI2C_IOWRITE_BITS(pdata, IC_ENABLE, ABORT, 1);

 while (wait--) {
  if (!XI2C_IOREAD_BITS(pdata, IC_ENABLE, ABORT))
   return 0;

  usleep_range(500, 600);
 }

 return -EBUSY;
}
