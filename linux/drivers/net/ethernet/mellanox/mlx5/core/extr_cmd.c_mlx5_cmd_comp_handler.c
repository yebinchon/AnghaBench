
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct semaphore {int dummy; } ;
struct mlx5_cmd {int log_sz; struct mlx5_cmd_stats* stats; int checksum_disabled; struct semaphore sem; struct semaphore pages_sem; struct mlx5_cmd_work_ent** ent_arr; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_work_ent {int ret; int status; size_t op; int done; TYPE_6__* in; TYPE_4__* out; int uout; int uout_size; void* context; int (* callback ) (int,void*) ;scalar_t__ ts1; scalar_t__ ts2; int idx; TYPE_2__* lay; scalar_t__ page_queue; int cb_timeout_work; int state; } ;
struct mlx5_cmd_stats {int lock; int n; int sum; } ;
typedef scalar_t__ s64 ;
typedef int (* mlx5_cmd_cbk_t ) (int,void*) ;
struct TYPE_9__ {int data; } ;
struct TYPE_11__ {TYPE_3__ first; } ;
struct TYPE_7__ {int data; } ;
struct TYPE_10__ {TYPE_1__ first; } ;
struct TYPE_8__ {int status_own; int out; } ;


 size_t ARRAY_SIZE (struct mlx5_cmd_stats*) ;
 int MLX5_CMD_ENT_STATE_PENDING_COMP ;
 int MLX5_DRIVER_STATUS_ABORTED ;
 int MLX5_TRIGGERED_CMD_COMP ;
 int cancel_delayed_work (int *) ;
 int complete (int *) ;
 int deliv_status_to_str (int) ;
 int dump_command (struct mlx5_core_dev*,struct mlx5_cmd_work_ent*,int ) ;
 int free_cmd (struct mlx5_cmd_work_ent*) ;
 int free_ent (struct mlx5_cmd*,int ) ;
 int free_msg (struct mlx5_core_dev*,TYPE_6__*) ;
 scalar_t__ ktime_get_ns () ;
 int memcpy (int ,int ,int) ;
 int mlx5_cmd_check (struct mlx5_core_dev*,int ,int ) ;
 int mlx5_copy_from_msg (int ,TYPE_4__*,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int,int ,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int ) ;
 int mlx5_free_cmd_msg (struct mlx5_core_dev*,TYPE_4__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 int up (struct semaphore*) ;
 int verify_signature (struct mlx5_cmd_work_ent*) ;

__attribute__((used)) static void mlx5_cmd_comp_handler(struct mlx5_core_dev *dev, u64 vec, bool forced)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 struct mlx5_cmd_work_ent *ent;
 mlx5_cmd_cbk_t callback;
 void *context;
 int err;
 int i;
 s64 ds;
 struct mlx5_cmd_stats *stats;
 unsigned long flags;
 unsigned long vector;


 vector = vec & 0xffffffff;
 for (i = 0; i < (1 << cmd->log_sz); i++) {
  if (test_bit(i, &vector)) {
   struct semaphore *sem;

   ent = cmd->ent_arr[i];


   if (!test_and_clear_bit(MLX5_CMD_ENT_STATE_PENDING_COMP,
      &ent->state)) {

    if (!forced) {
     mlx5_core_err(dev, "Command completion arrived after timeout (entry idx = %d).\n",
            ent->idx);
     free_ent(cmd, ent->idx);
     free_cmd(ent);
    }
    continue;
   }

   if (ent->callback)
    cancel_delayed_work(&ent->cb_timeout_work);
   if (ent->page_queue)
    sem = &cmd->pages_sem;
   else
    sem = &cmd->sem;
   ent->ts2 = ktime_get_ns();
   memcpy(ent->out->first.data, ent->lay->out, sizeof(ent->lay->out));
   dump_command(dev, ent, 0);
   if (!ent->ret) {
    if (!cmd->checksum_disabled)
     ent->ret = verify_signature(ent);
    else
     ent->ret = 0;
    if (vec & MLX5_TRIGGERED_CMD_COMP)
     ent->status = MLX5_DRIVER_STATUS_ABORTED;
    else
     ent->status = ent->lay->status_own >> 1;

    mlx5_core_dbg(dev, "command completed. ret 0x%x, delivery status %s(0x%x)\n",
           ent->ret, deliv_status_to_str(ent->status), ent->status);
   }


   if (!forced)
    free_ent(cmd, ent->idx);

   if (ent->callback) {
    ds = ent->ts2 - ent->ts1;
    if (ent->op < ARRAY_SIZE(cmd->stats)) {
     stats = &cmd->stats[ent->op];
     spin_lock_irqsave(&stats->lock, flags);
     stats->sum += ds;
     ++stats->n;
     spin_unlock_irqrestore(&stats->lock, flags);
    }

    callback = ent->callback;
    context = ent->context;
    err = ent->ret;
    if (!err) {
     err = mlx5_copy_from_msg(ent->uout,
         ent->out,
         ent->uout_size);

     err = err ? err : mlx5_cmd_check(dev,
         ent->in->first.data,
         ent->uout);
    }

    mlx5_free_cmd_msg(dev, ent->out);
    free_msg(dev, ent->in);

    err = err ? err : ent->status;
    if (!forced)
     free_cmd(ent);
    callback(err, context);
   } else {
    complete(&ent->done);
   }
   up(sem);
  }
 }
}
