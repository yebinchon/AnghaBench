
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_i2c_set_enable (struct xgbe_prv_data*,int) ;

__attribute__((used)) static int xgbe_i2c_enable(struct xgbe_prv_data *pdata)
{
 return xgbe_i2c_set_enable(pdata, 1);
}
