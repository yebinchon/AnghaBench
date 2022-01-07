
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int cp; scalar_t__ page_address; int block_address; } ;
struct TYPE_4__ {TYPE_1__ param; } ;
struct msb_data {int command_need_oob; int erased_blocks_bitmap; int command_value; TYPE_2__ regs; scalar_t__ read_only; } ;


 int EROFS ;
 int MEMSTICK_CP_BLOCK ;
 int MS_CMD_BLOCK_ERASE ;
 int __set_bit (int ,int ) ;
 int cpu_to_be16 (int ) ;
 int dbg_verbose (char*,int ) ;
 int h_msb_send_command ;
 int msb_mark_bad (struct msb_data*,int ) ;
 int msb_mark_block_unused (struct msb_data*,int ) ;
 scalar_t__ msb_reset (struct msb_data*,int) ;
 int msb_run_state_machine (struct msb_data*,int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int msb_erase_block(struct msb_data *msb, u16 pba)
{
 int error, try;
 if (msb->read_only)
  return -EROFS;

 dbg_verbose("erasing pba %d", pba);

 for (try = 1; try < 3; try++) {
  msb->regs.param.block_address = cpu_to_be16(pba);
  msb->regs.param.page_address = 0;
  msb->regs.param.cp = MEMSTICK_CP_BLOCK;
  msb->command_value = MS_CMD_BLOCK_ERASE;
  msb->command_need_oob = 0;


  error = msb_run_state_machine(msb, h_msb_send_command);
  if (!error || msb_reset(msb, 1))
   break;
 }

 if (error) {
  pr_err("erase failed, marking pba %d as bad", pba);
  msb_mark_bad(msb, pba);
 }

 dbg_verbose("erase success, marking pba %d as unused", pba);
 msb_mark_block_unused(msb, pba);
 __set_bit(pba, msb->erased_blocks_bitmap);
 return error;
}
