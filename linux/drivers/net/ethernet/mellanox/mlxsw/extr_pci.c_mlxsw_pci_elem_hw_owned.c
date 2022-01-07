
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {int consumer_counter; int count; } ;



__attribute__((used)) static bool mlxsw_pci_elem_hw_owned(struct mlxsw_pci_queue *q, bool owner_bit)
{
 return owner_bit != !!(q->consumer_counter & q->count);
}
