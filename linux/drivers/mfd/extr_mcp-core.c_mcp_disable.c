
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp {scalar_t__ use_count; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct mcp*) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mcp*) ;

void mcp_disable(struct mcp *mcp)
{
 unsigned long flags;

 spin_lock_irqsave(&mcp->lock, flags);
 if (--mcp->use_count == 0)
  mcp->ops->disable(mcp);
 spin_unlock_irqrestore(&mcp->lock, flags);
}
