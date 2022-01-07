
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_comp_ctx {int occupied; } ;
struct ena_com_admin_queue {int outstanding_cmds; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void comp_ctxt_release(struct ena_com_admin_queue *queue,
         struct ena_comp_ctx *comp_ctx)
{
 comp_ctx->occupied = 0;
 atomic_dec(&queue->outstanding_cmds);
}
