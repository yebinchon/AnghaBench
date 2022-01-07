
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 int intel_scu_ipc_iowrite8 (unsigned int,unsigned int) ;

__attribute__((used)) static int bcove_ipc_byte_reg_write(void *context, unsigned int reg,
         unsigned int val)
{
 u8 ipc_in = val;
 int ret;

 ret = intel_scu_ipc_iowrite8(reg, ipc_in);
 if (ret)
  return ret;

 return 0;
}
