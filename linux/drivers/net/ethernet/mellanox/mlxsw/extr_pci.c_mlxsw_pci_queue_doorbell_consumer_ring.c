
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {scalar_t__ count; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int dummy; } ;


 int __mlxsw_pci_queue_doorbell_set (struct mlxsw_pci*,struct mlxsw_pci_queue*,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void mlxsw_pci_queue_doorbell_consumer_ring(struct mlxsw_pci *mlxsw_pci,
         struct mlxsw_pci_queue *q)
{
 wmb();
 __mlxsw_pci_queue_doorbell_set(mlxsw_pci, q,
           q->consumer_counter + q->count);
}
