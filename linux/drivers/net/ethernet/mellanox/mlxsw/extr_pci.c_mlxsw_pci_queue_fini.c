
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue_ops {int (* fini ) (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;} ;
struct mlxsw_pci_mem_item {int mapaddr; int buf; int size; } ;
struct mlxsw_pci_queue {int elem_info; struct mlxsw_pci_mem_item mem_item; } ;
struct mlxsw_pci {int pdev; } ;


 int kfree (int ) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int stub1 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ;

__attribute__((used)) static void mlxsw_pci_queue_fini(struct mlxsw_pci *mlxsw_pci,
     const struct mlxsw_pci_queue_ops *q_ops,
     struct mlxsw_pci_queue *q)
{
 struct mlxsw_pci_mem_item *mem_item = &q->mem_item;

 q_ops->fini(mlxsw_pci, q);
 kfree(q->elem_info);
 pci_free_consistent(mlxsw_pci->pdev, mem_item->size,
       mem_item->buf, mem_item->mapaddr);
}
