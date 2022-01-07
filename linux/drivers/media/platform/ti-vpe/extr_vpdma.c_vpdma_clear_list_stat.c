
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vpdma_data {int dummy; } ;


 int VPDMA_INTX_OFFSET ;
 scalar_t__ VPDMA_INT_LIST0_STAT ;
 int write_reg (struct vpdma_data*,scalar_t__,int) ;

void vpdma_clear_list_stat(struct vpdma_data *vpdma, int irq_num,
      int list_num)
{
 u32 reg_addr = VPDMA_INT_LIST0_STAT + VPDMA_INTX_OFFSET * irq_num;

 write_reg(vpdma, reg_addr, 3 << (list_num * 2));
}
