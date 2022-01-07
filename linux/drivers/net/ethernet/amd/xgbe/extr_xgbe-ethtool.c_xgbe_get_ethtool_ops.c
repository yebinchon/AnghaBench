
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_ops {int dummy; } ;


 struct ethtool_ops const xgbe_ethtool_ops ;

const struct ethtool_ops *xgbe_get_ethtool_ops(void)
{
 return &xgbe_ethtool_ops;
}
