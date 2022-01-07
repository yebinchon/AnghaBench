
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* config_ipaddr ) (struct qlcnic_adapter*,int ,int) ;} ;


 int stub1 (struct qlcnic_adapter*,int ,int) ;

__attribute__((used)) static inline void qlcnic_config_ipaddr(struct qlcnic_adapter *adapter,
     __be32 ip, int cmd)
{
 adapter->nic_ops->config_ipaddr(adapter, ip, cmd);
}
