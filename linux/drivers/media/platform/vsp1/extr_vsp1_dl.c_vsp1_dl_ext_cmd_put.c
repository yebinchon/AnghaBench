
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_dl_ext_cmd {TYPE_1__* pool; int free; int flags; } ;
struct TYPE_2__ {int lock; int free; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vsp1_dl_ext_cmd_put(struct vsp1_dl_ext_cmd *cmd)
{
 unsigned long flags;

 if (!cmd)
  return;


 cmd->flags = 0;

 spin_lock_irqsave(&cmd->pool->lock, flags);
 list_add_tail(&cmd->free, &cmd->pool->free);
 spin_unlock_irqrestore(&cmd->pool->lock, flags);
}
