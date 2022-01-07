
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int IC_TAR ;
 int XI2C_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;

__attribute__((used)) static void xgbe_i2c_set_target(struct xgbe_prv_data *pdata, unsigned int addr)
{
 XI2C_IOWRITE(pdata, IC_TAR, addr);
}
