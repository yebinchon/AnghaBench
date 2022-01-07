
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_dl_ext_cmd {TYPE_1__* cmds; int data_dma; int flags; int opcode; } ;
struct TYPE_2__ {scalar_t__ reserved; int address_set; int flags; int opcode; } ;



__attribute__((used)) static void vsp1_dl_ext_cmd_fill_header(struct vsp1_dl_ext_cmd *cmd)
{
 cmd->cmds[0].opcode = cmd->opcode;
 cmd->cmds[0].flags = cmd->flags;
 cmd->cmds[0].address_set = cmd->data_dma;
 cmd->cmds[0].reserved = 0;
}
