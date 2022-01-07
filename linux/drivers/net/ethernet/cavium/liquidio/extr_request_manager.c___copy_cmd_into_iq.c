
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_instr_queue {int* base_addr; int host_write_index; scalar_t__ iqcmd_64B; } ;


 int memcpy (int*,int*,int) ;

__attribute__((used)) static inline void __copy_cmd_into_iq(struct octeon_instr_queue *iq,
          u8 *cmd)
{
 u8 *iqptr, cmdsize;

 cmdsize = ((iq->iqcmd_64B) ? 64 : 32);
 iqptr = iq->base_addr + (cmdsize * iq->host_write_index);

 memcpy(iqptr, cmd, cmdsize);
}
