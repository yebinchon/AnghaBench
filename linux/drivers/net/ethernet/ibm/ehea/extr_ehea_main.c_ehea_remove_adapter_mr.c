
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_adapter {int mr; scalar_t__ active_ports; } ;


 int ehea_rem_mr (int *) ;

__attribute__((used)) static void ehea_remove_adapter_mr(struct ehea_adapter *adapter)
{
 if (adapter->active_ports)
  return;

 ehea_rem_mr(&adapter->mr);
}
