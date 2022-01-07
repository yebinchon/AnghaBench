
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct orinoco_private {int lock; TYPE_2__ hw; int ndev; scalar_t__ hw_unavailable; } ;
struct TYPE_3__ {int (* unlock_irqrestore ) (int *,unsigned long*) ;int (* lock_irqsave ) (int *,unsigned long*) ;} ;


 int DEBUG (int,char*,int ) ;
 int EBUSY ;
 int stub1 (int *,unsigned long*) ;
 int stub2 (int *,unsigned long*) ;

__attribute__((used)) static inline int orinoco_lock(struct orinoco_private *priv,
          unsigned long *flags)
{
 priv->hw.ops->lock_irqsave(&priv->lock, flags);
 if (priv->hw_unavailable) {
  DEBUG(1, "orinoco_lock() called with hw_unavailable (dev=%p)\n",
         priv->ndev);
  priv->hw.ops->unlock_irqrestore(&priv->lock, flags);
  return -EBUSY;
 }
 return 0;
}
