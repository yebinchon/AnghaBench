
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* exit ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {TYPE_2__ phy_if; } ;


 int stub1 (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_exit(struct xgbe_prv_data *pdata)
{
 pdata->phy_if.phy_impl.exit(pdata);
}
