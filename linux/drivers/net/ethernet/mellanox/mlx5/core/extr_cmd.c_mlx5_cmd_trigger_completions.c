
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct TYPE_2__ {unsigned long bitmask; int log_sz; int alloc_lock; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;


 unsigned long MLX5_TRIGGERED_CMD_COMP ;
 int mlx5_cmd_comp_handler (struct mlx5_core_dev*,unsigned long,int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,unsigned long) ;
 int mlx5_eq_synchronize_cmd_irq (struct mlx5_core_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx5_cmd_trigger_completions(struct mlx5_core_dev *dev)
{
 unsigned long flags;
 u64 vector;


 mlx5_eq_synchronize_cmd_irq(dev);
 spin_lock_irqsave(&dev->cmd.alloc_lock, flags);
 vector = ~dev->cmd.bitmask & ((1ul << (1 << dev->cmd.log_sz)) - 1);
 if (!vector)
  goto no_trig;

 vector |= MLX5_TRIGGERED_CMD_COMP;
 spin_unlock_irqrestore(&dev->cmd.alloc_lock, flags);

 mlx5_core_dbg(dev, "vector 0x%llx\n", vector);
 mlx5_cmd_comp_handler(dev, vector, 1);
 return;

no_trig:
 spin_unlock_irqrestore(&dev->cmd.alloc_lock, flags);
}
