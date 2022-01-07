
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int EOPNOTSUPP ;

int qlcnicvf_config_led(struct qlcnic_adapter *adapter, u32 state, u32 rate)
{
 return -EOPNOTSUPP;
}
