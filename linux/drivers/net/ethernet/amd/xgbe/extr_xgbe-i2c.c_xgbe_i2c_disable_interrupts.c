
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int IC_INTR_MASK ;
 int XI2C_IOWRITE (struct xgbe_prv_data*,int ,int ) ;

__attribute__((used)) static void xgbe_i2c_disable_interrupts(struct xgbe_prv_data *pdata)
{
 XI2C_IOWRITE(pdata, IC_INTR_MASK, 0);
}
