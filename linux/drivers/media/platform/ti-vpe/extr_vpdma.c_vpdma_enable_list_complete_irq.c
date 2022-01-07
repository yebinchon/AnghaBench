
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpdma_data {int dummy; } ;


 int VPDMA_INTX_OFFSET ;
 int VPDMA_INT_LIST0_MASK ;
 int read_reg (struct vpdma_data*,int) ;
 int write_reg (struct vpdma_data*,int,int) ;

void vpdma_enable_list_complete_irq(struct vpdma_data *vpdma, int irq_num,
  int list_num, bool enable)
{
 u32 reg_addr = VPDMA_INT_LIST0_MASK + VPDMA_INTX_OFFSET * irq_num;
 u32 val;

 val = read_reg(vpdma, reg_addr);
 if (enable)
  val |= (1 << (list_num * 2));
 else
  val &= ~(1 << (list_num * 2));
 write_reg(vpdma, reg_addr, val);
}
