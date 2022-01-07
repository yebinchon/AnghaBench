
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct vpdma_desc_list {TYPE_1__ buf; int next; } ;



void vpdma_reset_desc_list(struct vpdma_desc_list *list)
{
 list->next = list->buf.addr;
}
