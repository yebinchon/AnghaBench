
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct orinoco_private {int lock; TYPE_2__ hw; } ;
struct TYPE_3__ {int (* unlock_irqrestore ) (int *,unsigned long*) ;} ;


 int stub1 (int *,unsigned long*) ;

__attribute__((used)) static inline void orinoco_unlock(struct orinoco_private *priv,
      unsigned long *flags)
{
 priv->hw.ops->unlock_irqrestore(&priv->lock, flags);
}
