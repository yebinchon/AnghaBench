
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct vpdma_desc_list {int type; TYPE_1__ buf; int next; } ;


 int vpdma_alloc_desc_buf (TYPE_1__*,size_t) ;

int vpdma_create_desc_list(struct vpdma_desc_list *list, size_t size, int type)
{
 int r;

 r = vpdma_alloc_desc_buf(&list->buf, size);
 if (r)
  return r;

 list->next = list->buf.addr;

 list->type = type;

 return 0;
}
