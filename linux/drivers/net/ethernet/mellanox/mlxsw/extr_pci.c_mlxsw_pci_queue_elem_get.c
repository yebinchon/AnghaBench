
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_pci_queue {int dummy; } ;
struct TYPE_2__ {char* elem; } ;


 TYPE_1__* mlxsw_pci_queue_elem_info_get (struct mlxsw_pci_queue*,int) ;

__attribute__((used)) static char *mlxsw_pci_queue_elem_get(struct mlxsw_pci_queue *q, int elem_index)
{
 return mlxsw_pci_queue_elem_info_get(q, elem_index)->elem;
}
