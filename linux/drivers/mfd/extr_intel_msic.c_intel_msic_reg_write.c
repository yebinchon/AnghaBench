
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int intel_scu_ipc_iowrite8 (unsigned short,int ) ;

int intel_msic_reg_write(unsigned short reg, u8 val)
{
 return intel_scu_ipc_iowrite8(reg, val);
}
