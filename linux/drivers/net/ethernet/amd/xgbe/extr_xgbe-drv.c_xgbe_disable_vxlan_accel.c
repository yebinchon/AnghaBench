
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_disable_vxlan_hw (struct xgbe_prv_data*) ;
 int xgbe_disable_vxlan_offloads (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_disable_vxlan_accel(struct xgbe_prv_data *pdata)
{
 xgbe_disable_vxlan_offloads(pdata);

 xgbe_disable_vxlan_hw(pdata);
}
