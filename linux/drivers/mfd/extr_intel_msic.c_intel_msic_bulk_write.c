
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 size_t SCU_IPC_RWBUF_LIMIT ;
 scalar_t__ WARN_ON (int) ;
 int intel_scu_ipc_writev (unsigned short*,int *,size_t) ;

int intel_msic_bulk_write(unsigned short *reg, u8 *buf, size_t count)
{
 if (WARN_ON(count > SCU_IPC_RWBUF_LIMIT))
  return -EINVAL;

 return intel_scu_ipc_writev(reg, buf, count);
}
