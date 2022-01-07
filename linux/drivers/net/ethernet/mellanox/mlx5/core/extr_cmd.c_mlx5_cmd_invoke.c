
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct mlx5_cmd {struct mlx5_cmd_stats* stats; int wq; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_work_ent {int polling; int status; scalar_t__ ts1; scalar_t__ ts2; int work; int cb_timeout_work; int done; int token; } ;
struct mlx5_cmd_stats {int lock; int n; int sum; } ;
struct TYPE_2__ {int data; } ;
struct mlx5_cmd_msg {TYPE_1__ first; } ;
typedef scalar_t__ s64 ;
typedef int mlx5_cmd_cbk_t ;


 size_t ARRAY_SIZE (struct mlx5_cmd_stats*) ;
 int EINVAL ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int (*) (int *)) ;
 scalar_t__ IS_ERR (struct mlx5_cmd_work_ent*) ;
 int MLX5_CMD_TIME ;
 size_t MLX5_GET (int ,int ,int ) ;
 int PTR_ERR (struct mlx5_cmd_work_ent*) ;
 struct mlx5_cmd_work_ent* alloc_cmd (struct mlx5_cmd*,struct mlx5_cmd_msg*,struct mlx5_cmd_msg*,void*,int,int ,void*,int) ;
 int cb_timeout_handler ;
 int cmd_work_handler (int *) ;
 int free_cmd (struct mlx5_cmd_work_ent*) ;
 int init_completion (int *) ;
 int mbox_in ;
 int mlx5_command_str (size_t) ;
 int mlx5_core_dbg_mask (struct mlx5_core_dev*,int,char*,int ,scalar_t__) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int opcode ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_func (struct mlx5_core_dev*,struct mlx5_cmd_work_ent*) ;

__attribute__((used)) static int mlx5_cmd_invoke(struct mlx5_core_dev *dev, struct mlx5_cmd_msg *in,
      struct mlx5_cmd_msg *out, void *uout, int uout_size,
      mlx5_cmd_cbk_t callback,
      void *context, int page_queue, u8 *status,
      u8 token, bool force_polling)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 struct mlx5_cmd_work_ent *ent;
 struct mlx5_cmd_stats *stats;
 int err = 0;
 s64 ds;
 u16 op;

 if (callback && page_queue)
  return -EINVAL;

 ent = alloc_cmd(cmd, in, out, uout, uout_size, callback, context,
   page_queue);
 if (IS_ERR(ent))
  return PTR_ERR(ent);

 ent->token = token;
 ent->polling = force_polling;

 if (!callback)
  init_completion(&ent->done);

 INIT_DELAYED_WORK(&ent->cb_timeout_work, cb_timeout_handler);
 INIT_WORK(&ent->work, cmd_work_handler);
 if (page_queue) {
  cmd_work_handler(&ent->work);
 } else if (!queue_work(cmd->wq, &ent->work)) {
  mlx5_core_warn(dev, "failed to queue work\n");
  err = -ENOMEM;
  goto out_free;
 }

 if (callback)
  goto out;

 err = wait_func(dev, ent);
 if (err == -ETIMEDOUT)
  goto out;

 ds = ent->ts2 - ent->ts1;
 op = MLX5_GET(mbox_in, in->first.data, opcode);
 if (op < ARRAY_SIZE(cmd->stats)) {
  stats = &cmd->stats[op];
  spin_lock_irq(&stats->lock);
  stats->sum += ds;
  ++stats->n;
  spin_unlock_irq(&stats->lock);
 }
 mlx5_core_dbg_mask(dev, 1 << MLX5_CMD_TIME,
      "fw exec time for %s is %lld nsec\n",
      mlx5_command_str(op), ds);
 *status = ent->status;

out_free:
 free_cmd(ent);
out:
 return err;
}
