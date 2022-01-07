
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_comp_ctx {char* status; int comp_status; int cmd_opcode; int wait_event; } ;
struct TYPE_2__ {int no_completion; } ;
struct ena_com_admin_queue {int polling; int running_state; scalar_t__ auto_polling; int q_lock; TYPE_1__ stats; int completion_timeout; } ;


 char* ENA_CMD_COMPLETED ;
 char* ENA_CMD_SUBMITTED ;
 int ETIME ;
 int comp_ctxt_release (struct ena_com_admin_queue*,struct ena_comp_ctx*) ;
 int ena_com_comp_status_to_errno (int ) ;
 int ena_com_handle_admin_completion (struct ena_com_admin_queue*) ;
 int pr_err (char*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int ena_com_wait_and_process_admin_cq_interrupts(struct ena_comp_ctx *comp_ctx,
       struct ena_com_admin_queue *admin_queue)
{
 unsigned long flags = 0;
 int ret;

 wait_for_completion_timeout(&comp_ctx->wait_event,
        usecs_to_jiffies(
         admin_queue->completion_timeout));






 if (unlikely(comp_ctx->status == ENA_CMD_SUBMITTED)) {
  spin_lock_irqsave(&admin_queue->q_lock, flags);
  ena_com_handle_admin_completion(admin_queue);
  admin_queue->stats.no_completion++;
  spin_unlock_irqrestore(&admin_queue->q_lock, flags);

  if (comp_ctx->status == ENA_CMD_COMPLETED) {
   pr_err("The ena device sent a completion but the driver didn't receive a MSI-X interrupt (cmd %d), autopolling mode is %s\n",
          comp_ctx->cmd_opcode,
          admin_queue->auto_polling ? "ON" : "OFF");

   if (admin_queue->auto_polling)
    admin_queue->polling = 1;
  } else {
   pr_err("The ena device doesn't send a completion for the admin cmd %d status %d\n",
          comp_ctx->cmd_opcode, comp_ctx->status);
  }




  if (!admin_queue->polling) {
   admin_queue->running_state = 0;
   ret = -ETIME;
   goto err;
  }
 }

 ret = ena_com_comp_status_to_errno(comp_ctx->comp_status);
err:
 comp_ctxt_release(admin_queue, comp_ctx);
 return ret;
}
