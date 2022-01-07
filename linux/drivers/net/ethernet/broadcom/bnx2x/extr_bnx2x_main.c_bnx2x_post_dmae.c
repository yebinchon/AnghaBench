
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dmae_command {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DMAE_REG_CMD_MEM ;
 int REG_WR (struct bnx2x*,int,int) ;
 int* dmae_reg_go_c ;

void bnx2x_post_dmae(struct bnx2x *bp, struct dmae_command *dmae, int idx)
{
 u32 cmd_offset;
 int i;

 cmd_offset = (DMAE_REG_CMD_MEM + sizeof(struct dmae_command) * idx);
 for (i = 0; i < (sizeof(struct dmae_command)/4); i++) {
  REG_WR(bp, cmd_offset + i*4, *(((u32 *)dmae) + i));
 }
 REG_WR(bp, dmae_reg_go_c[idx], 1);
}
