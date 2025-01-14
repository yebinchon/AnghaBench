
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue_elem_info {int dummy; } ;
struct mlxsw_pci_queue {int consumer_counter; int count; } ;


 struct mlxsw_pci_queue_elem_info* mlxsw_pci_queue_elem_info_get (struct mlxsw_pci_queue*,int) ;

__attribute__((used)) static struct mlxsw_pci_queue_elem_info *
mlxsw_pci_queue_elem_info_consumer_get(struct mlxsw_pci_queue *q)
{
 int index = q->consumer_counter & (q->count - 1);

 return mlxsw_pci_queue_elem_info_get(q, index);
}
