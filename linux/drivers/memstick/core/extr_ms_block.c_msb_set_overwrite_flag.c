
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct TYPE_4__ {void* overwrite_flag; } ;
struct TYPE_6__ {int cp; void* page_address; int block_address; } ;
struct TYPE_5__ {TYPE_1__ extra_data; TYPE_3__ param; } ;
struct msb_data {int command_need_oob; int command_value; TYPE_2__ regs; scalar_t__ read_only; } ;


 int EROFS ;
 int MEMSTICK_CP_OVERWRITE ;
 int MS_CMD_BLOCK_WRITE ;
 int cpu_to_be16 (int ) ;
 int dbg_verbose (char*,void*,int ,void*) ;
 int h_msb_send_command ;
 int msb_run_state_machine (struct msb_data*,int ) ;

__attribute__((used)) static int msb_set_overwrite_flag(struct msb_data *msb,
      u16 pba, u8 page, u8 flag)
{
 if (msb->read_only)
  return -EROFS;

 msb->regs.param.block_address = cpu_to_be16(pba);
 msb->regs.param.page_address = page;
 msb->regs.param.cp = MEMSTICK_CP_OVERWRITE;
 msb->regs.extra_data.overwrite_flag = flag;
 msb->command_value = MS_CMD_BLOCK_WRITE;
 msb->command_need_oob = 1;

 dbg_verbose("changing overwrite flag to %02x for sector %d, page %d",
       flag, pba, page);
 return msb_run_state_machine(msb, h_msb_send_command);
}
