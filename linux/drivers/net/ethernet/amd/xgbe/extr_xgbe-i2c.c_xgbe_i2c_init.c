
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dev; } ;


 int dev_err (int ,char*) ;
 int xgbe_i2c_clear_all_interrupts (struct xgbe_prv_data*) ;
 int xgbe_i2c_disable (struct xgbe_prv_data*) ;
 int xgbe_i2c_disable_interrupts (struct xgbe_prv_data*) ;
 int xgbe_i2c_get_features (struct xgbe_prv_data*) ;
 int xgbe_i2c_set_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_i2c_init(struct xgbe_prv_data *pdata)
{
 int ret;

 xgbe_i2c_disable_interrupts(pdata);

 ret = xgbe_i2c_disable(pdata);
 if (ret) {
  dev_err(pdata->dev, "failed to disable i2c master\n");
  return ret;
 }

 xgbe_i2c_get_features(pdata);

 xgbe_i2c_set_mode(pdata);

 xgbe_i2c_clear_all_interrupts(pdata);

 return 0;
}
