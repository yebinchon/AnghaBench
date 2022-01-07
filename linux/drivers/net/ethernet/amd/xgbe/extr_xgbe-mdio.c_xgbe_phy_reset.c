
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* reset ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {TYPE_2__ phy_if; } ;


 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_an_clear_interrupts_all (struct xgbe_prv_data*) ;
 int xgbe_an_disable_all (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_reset(struct xgbe_prv_data *pdata)
{
 int ret;

 ret = pdata->phy_if.phy_impl.reset(pdata);
 if (ret)
  return ret;


 xgbe_an_disable_all(pdata);


 xgbe_an_clear_interrupts_all(pdata);

 return 0;
}
