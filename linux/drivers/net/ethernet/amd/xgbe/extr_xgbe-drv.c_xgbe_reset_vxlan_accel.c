
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {scalar_t__ vxlan_force_disable; scalar_t__ vxlan_features; } ;


 int xgbe_disable_vxlan_hw (struct xgbe_prv_data*) ;
 int xgbe_enable_vxlan_offloads (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_reset_vxlan_accel(struct xgbe_prv_data *pdata)
{
 xgbe_disable_vxlan_hw(pdata);

 if (pdata->vxlan_features)
  xgbe_enable_vxlan_offloads(pdata);

 pdata->vxlan_force_disable = 0;
}
