
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcbnl_rtnl_ops {int dummy; } ;


 struct dcbnl_rtnl_ops const xgbe_dcbnl_ops ;

const struct dcbnl_rtnl_ops *xgbe_get_dcbnl_ops(void)
{
 return &xgbe_dcbnl_ops;
}
