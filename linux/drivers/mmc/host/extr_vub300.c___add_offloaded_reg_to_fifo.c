
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct vub300_mmc_host {int total_offload_count; TYPE_1__* fn; } ;
struct offload_registers_access {int dummy; } ;
struct TYPE_2__ {size_t offload_point; size_t offload_count; int * reg; } ;


 size_t MAXREGMASK ;
 int memcpy (int *,struct offload_registers_access*,int) ;

__attribute__((used)) static void __add_offloaded_reg_to_fifo(struct vub300_mmc_host *vub300,
     struct offload_registers_access
     *register_access, u8 func)
{
 u8 r = vub300->fn[func].offload_point + vub300->fn[func].offload_count;
 memcpy(&vub300->fn[func].reg[MAXREGMASK & r], register_access,
        sizeof(struct offload_registers_access));
 vub300->fn[func].offload_count += 1;
 vub300->total_offload_count += 1;
}
