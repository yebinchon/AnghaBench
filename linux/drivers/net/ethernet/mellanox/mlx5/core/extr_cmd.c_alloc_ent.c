
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {int max_reg_cmds; int alloc_lock; int bitmask; } ;


 int ENOMEM ;
 int clear_bit (int,int *) ;
 int find_first_bit (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int alloc_ent(struct mlx5_cmd *cmd)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cmd->alloc_lock, flags);
 ret = find_first_bit(&cmd->bitmask, cmd->max_reg_cmds);
 if (ret < cmd->max_reg_cmds)
  clear_bit(ret, &cmd->bitmask);
 spin_unlock_irqrestore(&cmd->alloc_lock, flags);

 return ret < cmd->max_reg_cmds ? ret : -ENOMEM;
}
