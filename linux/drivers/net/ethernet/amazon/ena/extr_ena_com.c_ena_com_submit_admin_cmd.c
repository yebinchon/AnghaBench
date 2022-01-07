
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_comp_ctx {int dummy; } ;
struct ena_com_admin_queue {int running_state; int q_lock; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;


 int ENODEV ;
 struct ena_comp_ctx* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct ena_comp_ctx*) ;
 struct ena_comp_ctx* __ena_com_submit_admin_cmd (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,size_t,struct ena_admin_acq_entry*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ena_comp_ctx *ena_com_submit_admin_cmd(struct ena_com_admin_queue *admin_queue,
           struct ena_admin_aq_entry *cmd,
           size_t cmd_size_in_bytes,
           struct ena_admin_acq_entry *comp,
           size_t comp_size_in_bytes)
{
 unsigned long flags = 0;
 struct ena_comp_ctx *comp_ctx;

 spin_lock_irqsave(&admin_queue->q_lock, flags);
 if (unlikely(!admin_queue->running_state)) {
  spin_unlock_irqrestore(&admin_queue->q_lock, flags);
  return ERR_PTR(-ENODEV);
 }
 comp_ctx = __ena_com_submit_admin_cmd(admin_queue, cmd,
           cmd_size_in_bytes,
           comp,
           comp_size_in_bytes);
 if (IS_ERR(comp_ctx))
  admin_queue->running_state = 0;
 spin_unlock_irqrestore(&admin_queue->q_lock, flags);

 return comp_ctx;
}
