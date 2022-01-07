
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue_elem_info {int dummy; } ;
struct mlxsw_pci_queue {struct mlxsw_pci_queue_elem_info* elem_info; } ;



__attribute__((used)) static struct mlxsw_pci_queue_elem_info *
mlxsw_pci_queue_elem_info_get(struct mlxsw_pci_queue *q, int elem_index)
{
 return &q->elem_info[elem_index];
}
