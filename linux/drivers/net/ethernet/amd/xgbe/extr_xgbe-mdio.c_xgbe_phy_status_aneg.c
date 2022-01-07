
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* an_outcome ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {TYPE_2__ phy_if; } ;
typedef enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;


 int stub1 (struct xgbe_prv_data*) ;

__attribute__((used)) static enum xgbe_mode xgbe_phy_status_aneg(struct xgbe_prv_data *pdata)
{
 return pdata->phy_if.phy_impl.an_outcome(pdata);
}
