
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DMAE_CMD_SRC_RESET ;

u32 bnx2x_dmae_opcode_clr_src_reset(u32 opcode)
{
 return opcode & ~DMAE_CMD_SRC_RESET;
}
