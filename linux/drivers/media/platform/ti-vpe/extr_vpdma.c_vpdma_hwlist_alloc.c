
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_data {int* hwlist_used; int lock; void** hwlist_priv; } ;


 int VPDMA_MAX_NUM_LIST ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int vpdma_hwlist_alloc(struct vpdma_data *vpdma, void *priv)
{
 int i, list_num = -1;
 unsigned long flags;

 spin_lock_irqsave(&vpdma->lock, flags);
 for (i = 0; i < VPDMA_MAX_NUM_LIST &&
     vpdma->hwlist_used[i] == 1; i++)
  ;

 if (i < VPDMA_MAX_NUM_LIST) {
  list_num = i;
  vpdma->hwlist_used[i] = 1;
  vpdma->hwlist_priv[i] = priv;
 }
 spin_unlock_irqrestore(&vpdma->lock, flags);

 return list_num;
}
