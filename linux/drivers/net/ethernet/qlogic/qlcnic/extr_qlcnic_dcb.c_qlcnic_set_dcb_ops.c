
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* dcb; } ;
struct TYPE_2__ {int * ops; } ;


 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_dcb_ops ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_dcb_ops ;

__attribute__((used)) static void qlcnic_set_dcb_ops(struct qlcnic_adapter *adapter)
{
 if (qlcnic_82xx_check(adapter))
  adapter->dcb->ops = &qlcnic_82xx_dcb_ops;
 else if (qlcnic_83xx_check(adapter))
  adapter->dcb->ops = &qlcnic_83xx_dcb_ops;
}
