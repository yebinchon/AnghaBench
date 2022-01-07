
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct ethtool_coalesce {int dummy; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* config_intr_coal ) (struct qlcnic_adapter*,struct ethtool_coalesce*) ;} ;


 int stub1 (struct qlcnic_adapter*,struct ethtool_coalesce*) ;

__attribute__((used)) static inline int qlcnic_config_intr_coalesce(struct qlcnic_adapter *adapter,
           struct ethtool_coalesce *ethcoal)
{
 return adapter->ahw->hw_ops->config_intr_coal(adapter, ethcoal);
}
