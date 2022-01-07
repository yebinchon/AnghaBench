
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpdma_desc_list {int * next; int buf; } ;


 int vpdma_free_desc_buf (int *) ;

void vpdma_free_desc_list(struct vpdma_desc_list *list)
{
 vpdma_free_desc_buf(&list->buf);

 list->next = ((void*)0);
}
