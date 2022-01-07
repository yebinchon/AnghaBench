
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* set_mode ) (struct xgbe_prv_data*,int ) ;} ;
struct TYPE_6__ {TYPE_2__ phy_impl; } ;
struct TYPE_4__ {int (* set_speed ) (struct xgbe_prv_data*,int ) ;} ;
struct xgbe_prv_data {TYPE_3__ phy_if; TYPE_1__ hw_if; } ;


 int SPEED_1000 ;
 int XGBE_MODE_KX_1000 ;
 int stub1 (struct xgbe_prv_data*,int ) ;
 int stub2 (struct xgbe_prv_data*,int ) ;

__attribute__((used)) static void xgbe_kx_1000_mode(struct xgbe_prv_data *pdata)
{

 pdata->hw_if.set_speed(pdata, SPEED_1000);


 pdata->phy_if.phy_impl.set_mode(pdata, XGBE_MODE_KX_1000);
}
