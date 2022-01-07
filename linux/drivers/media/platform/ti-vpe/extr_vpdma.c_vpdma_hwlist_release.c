
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_data {int* hwlist_used; int lock; void* hwlist_priv; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void *vpdma_hwlist_release(struct vpdma_data *vpdma, int list_num)
{
 void *priv;
 unsigned long flags;

 spin_lock_irqsave(&vpdma->lock, flags);
 vpdma->hwlist_used[list_num] = 0;
 priv = vpdma->hwlist_priv;
 spin_unlock_irqrestore(&vpdma->lock, flags);

 return priv;
}
