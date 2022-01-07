
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_data {void** hwlist_priv; } ;


 int VPDMA_MAX_NUM_LIST ;

void *vpdma_hwlist_get_priv(struct vpdma_data *vpdma, int list_num)
{
 if (!vpdma || list_num >= VPDMA_MAX_NUM_LIST)
  return ((void*)0);

 return vpdma->hwlist_priv[list_num];
}
