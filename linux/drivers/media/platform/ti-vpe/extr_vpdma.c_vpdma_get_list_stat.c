
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vpdma_data {int dummy; } ;


 int VPDMA_INTX_OFFSET ;
 scalar_t__ VPDMA_INT_LIST0_STAT ;
 unsigned int read_reg (struct vpdma_data*,scalar_t__) ;

unsigned int vpdma_get_list_stat(struct vpdma_data *vpdma, int irq_num)
{
 u32 reg_addr = VPDMA_INT_LIST0_STAT + VPDMA_INTX_OFFSET * irq_num;

 return read_reg(vpdma, reg_addr);
}
