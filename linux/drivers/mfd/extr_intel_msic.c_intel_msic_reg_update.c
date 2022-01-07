
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int intel_scu_ipc_update_register (unsigned short,int ,int ) ;

int intel_msic_reg_update(unsigned short reg, u8 val, u8 mask)
{
 return intel_scu_ipc_update_register(reg, val, mask);
}
