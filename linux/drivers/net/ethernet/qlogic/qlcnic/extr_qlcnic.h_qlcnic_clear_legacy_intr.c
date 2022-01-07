
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* clear_legacy_intr ) (struct qlcnic_adapter*) ;} ;


 int stub1 (struct qlcnic_adapter*) ;

__attribute__((used)) static inline irqreturn_t
qlcnic_clear_legacy_intr(struct qlcnic_adapter *adapter)
{
 return adapter->nic_ops->clear_legacy_intr(adapter);
}
