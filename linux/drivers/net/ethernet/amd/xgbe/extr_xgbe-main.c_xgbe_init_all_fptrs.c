
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {int phy_if; TYPE_1__* vdata; int desc_if; int i2c_if; int hw_if; } ;
struct TYPE_2__ {int (* init_function_ptrs_phy_impl ) (int *) ;} ;


 int stub1 (int *) ;
 int xgbe_init_function_ptrs_desc (int *) ;
 int xgbe_init_function_ptrs_dev (int *) ;
 int xgbe_init_function_ptrs_i2c (int *) ;
 int xgbe_init_function_ptrs_phy (int *) ;

__attribute__((used)) static void xgbe_init_all_fptrs(struct xgbe_prv_data *pdata)
{
 xgbe_init_function_ptrs_dev(&pdata->hw_if);
 xgbe_init_function_ptrs_phy(&pdata->phy_if);
 xgbe_init_function_ptrs_i2c(&pdata->i2c_if);
 xgbe_init_function_ptrs_desc(&pdata->desc_if);

 pdata->vdata->init_function_ptrs_phy_impl(&pdata->phy_if);
}
