
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_data {int dummy; } ;


 int BIT (int) ;
 int VPDMA_LIST_STAT_SYNC ;
 int read_reg (struct vpdma_data*,int ) ;

bool vpdma_list_busy(struct vpdma_data *vpdma, int list_num)
{
 return read_reg(vpdma, VPDMA_LIST_STAT_SYNC) & BIT(list_num + 16);
}
