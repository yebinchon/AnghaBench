
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_telecom_divisor ) (struct mcp*,unsigned int) ;} ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct mcp*,unsigned int) ;

void mcp_set_telecom_divisor(struct mcp *mcp, unsigned int div)
{
 unsigned long flags;

 spin_lock_irqsave(&mcp->lock, flags);
 mcp->ops->set_telecom_divisor(mcp, div);
 spin_unlock_irqrestore(&mcp->lock, flags);
}
