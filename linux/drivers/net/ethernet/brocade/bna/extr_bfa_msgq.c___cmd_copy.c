
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ kva; } ;
struct bfa_msgq_cmdq {size_t producer_index; TYPE_1__ addr; int depth; } ;
struct bfa_msgq_cmd_entry {size_t msg_size; scalar_t__ msg_hdr; } ;


 int BFA_MSGQ_INDX_ADD (size_t,int,int ) ;
 size_t BFI_MSGQ_CMD_ENTRY_SIZE ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static void
__cmd_copy(struct bfa_msgq_cmdq *cmdq, struct bfa_msgq_cmd_entry *cmd)
{
 size_t len = cmd->msg_size;
 int num_entries = 0;
 size_t to_copy;
 u8 *src, *dst;

 src = (u8 *)cmd->msg_hdr;
 dst = (u8 *)cmdq->addr.kva;
 dst += (cmdq->producer_index * BFI_MSGQ_CMD_ENTRY_SIZE);

 while (len) {
  to_copy = (len < BFI_MSGQ_CMD_ENTRY_SIZE) ?
    len : BFI_MSGQ_CMD_ENTRY_SIZE;
  memcpy(dst, src, to_copy);
  len -= to_copy;
  src += BFI_MSGQ_CMD_ENTRY_SIZE;
  BFA_MSGQ_INDX_ADD(cmdq->producer_index, 1, cmdq->depth);
  dst = (u8 *)cmdq->addr.kva;
  dst += (cmdq->producer_index * BFI_MSGQ_CMD_ENTRY_SIZE);
  num_entries++;
 }

}
