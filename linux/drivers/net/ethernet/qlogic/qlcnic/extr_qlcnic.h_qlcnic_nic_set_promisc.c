
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* config_promisc_mode ) (struct qlcnic_adapter*,int ) ;} ;


 int stub1 (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static inline int qlcnic_nic_set_promisc(struct qlcnic_adapter *adapter,
      u32 mode)
{
 return adapter->ahw->hw_ops->config_promisc_mode(adapter, mode);
}
