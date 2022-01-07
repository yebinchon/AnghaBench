
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ena_comp_ctx {int occupied; } ;
struct ena_com_admin_queue {size_t q_depth; struct ena_comp_ctx* comp_ctx; int outstanding_cmds; } ;


 int atomic_inc (int *) ;
 int pr_err (char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ena_comp_ctx *get_comp_ctxt(struct ena_com_admin_queue *queue,
       u16 command_id, bool capture)
{
 if (unlikely(command_id >= queue->q_depth)) {
  pr_err("command id is larger than the queue size. cmd_id: %u queue size %d\n",
         command_id, queue->q_depth);
  return ((void*)0);
 }

 if (unlikely(queue->comp_ctx[command_id].occupied && capture)) {
  pr_err("Completion context is occupied\n");
  return ((void*)0);
 }

 if (capture) {
  atomic_inc(&queue->outstanding_cmds);
  queue->comp_ctx[command_id].occupied = 1;
 }

 return &queue->comp_ctx[command_id];
}
