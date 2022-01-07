
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disable_vxlan ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {scalar_t__ vxlan_port; scalar_t__ vxlan_port_set; TYPE_1__ hw_if; } ;


 int stub1 (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_disable_vxlan_hw(struct xgbe_prv_data *pdata)
{
 if (!pdata->vxlan_port_set)
  return;

 pdata->hw_if.disable_vxlan(pdata);

 pdata->vxlan_port_set = 0;
 pdata->vxlan_port = 0;
}
