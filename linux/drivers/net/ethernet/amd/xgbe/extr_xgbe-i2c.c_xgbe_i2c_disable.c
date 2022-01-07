
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 unsigned int xgbe_i2c_abort (struct xgbe_prv_data*) ;
 unsigned int xgbe_i2c_set_enable (struct xgbe_prv_data*,int) ;

__attribute__((used)) static int xgbe_i2c_disable(struct xgbe_prv_data *pdata)
{
 unsigned int ret;

 ret = xgbe_i2c_set_enable(pdata, 0);
 if (ret) {

  ret = xgbe_i2c_abort(pdata);
  if (ret)
   return ret;


  ret = xgbe_i2c_set_enable(pdata, 0);
 }

 return ret;
}
