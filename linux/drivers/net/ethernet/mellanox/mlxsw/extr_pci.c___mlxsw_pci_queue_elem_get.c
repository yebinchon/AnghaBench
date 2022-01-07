
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* buf; } ;
struct mlxsw_pci_queue {TYPE_1__ mem_item; } ;



__attribute__((used)) static char *__mlxsw_pci_queue_elem_get(struct mlxsw_pci_queue *q,
     size_t elem_size, int elem_index)
{
 return q->mem_item.buf + (elem_size * elem_index);
}
