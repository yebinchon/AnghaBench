
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
struct TYPE_2__ {int (* config_led ) (struct qlcnic_adapter*,int ,int ) ;} ;


 int stub1 (struct qlcnic_adapter*,int ,int ) ;

__attribute__((used)) static inline int qlcnic_config_led(struct qlcnic_adapter *adapter, u32 state,
        u32 rate)
{
 return adapter->nic_ops->config_led(adapter, state, rate);
}
