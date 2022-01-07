
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int IC_CLR_INTR ;
 int XI2C_IOREAD (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_i2c_clear_all_interrupts(struct xgbe_prv_data *pdata)
{
 XI2C_IOREAD(pdata, IC_CLR_INTR);
}
