
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int addr; scalar_t__ dma_addr; } ;
struct vpdma_desc_list {int next; int type; TYPE_1__ buf; } ;
struct vpdma_data {int lock; } ;


 int EBUSY ;
 int VPDMA_LIST_ADDR ;
 int VPDMA_LIST_ATTR ;
 int VPDMA_LIST_NUM_SHFT ;
 int VPDMA_LIST_TYPE_SHFT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vpdma_list_busy (struct vpdma_data*,int) ;
 int write_reg (struct vpdma_data*,int ,int) ;

int vpdma_submit_descs(struct vpdma_data *vpdma,
   struct vpdma_desc_list *list, int list_num)
{
 int list_size;
 unsigned long flags;

 if (vpdma_list_busy(vpdma, list_num))
  return -EBUSY;


 list_size = (list->next - list->buf.addr) >> 4;

 spin_lock_irqsave(&vpdma->lock, flags);
 write_reg(vpdma, VPDMA_LIST_ADDR, (u32) list->buf.dma_addr);

 write_reg(vpdma, VPDMA_LIST_ATTR,
   (list_num << VPDMA_LIST_NUM_SHFT) |
   (list->type << VPDMA_LIST_TYPE_SHFT) |
   list_size);
 spin_unlock_irqrestore(&vpdma->lock, flags);

 return 0;
}
