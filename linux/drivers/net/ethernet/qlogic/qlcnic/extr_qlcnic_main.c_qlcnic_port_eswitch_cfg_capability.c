
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int* extra_capability; } ;


 int QLCNIC_FW_CAPABILITY_2_PER_PORT_ESWITCH_CFG ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_84xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static bool qlcnic_port_eswitch_cfg_capability(struct qlcnic_adapter *adapter)
{
 bool ret = 0;

 if (qlcnic_84xx_check(adapter)) {
  ret = 1;
 } else if (qlcnic_83xx_check(adapter)) {
  if (adapter->ahw->extra_capability[0] &
      QLCNIC_FW_CAPABILITY_2_PER_PORT_ESWITCH_CFG)
   ret = 1;
  else
   ret = 0;
 }

 return ret;
}
