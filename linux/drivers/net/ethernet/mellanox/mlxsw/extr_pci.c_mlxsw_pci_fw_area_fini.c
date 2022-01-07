
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_pci_mem_item {int mapaddr; int buf; int size; } ;
struct TYPE_2__ {int count; struct mlxsw_pci_mem_item* items; } ;
struct mlxsw_pci {TYPE_1__ fw_area; int pdev; int core; } ;


 int kfree (struct mlxsw_pci_mem_item*) ;
 int mlxsw_cmd_unmap_fa (int ) ;
 int pci_free_consistent (int ,int ,int ,int ) ;

__attribute__((used)) static void mlxsw_pci_fw_area_fini(struct mlxsw_pci *mlxsw_pci)
{
 struct mlxsw_pci_mem_item *mem_item;
 int i;

 mlxsw_cmd_unmap_fa(mlxsw_pci->core);

 for (i = 0; i < mlxsw_pci->fw_area.count; i++) {
  mem_item = &mlxsw_pci->fw_area.items[i];

  pci_free_consistent(mlxsw_pci->pdev, mem_item->size,
        mem_item->buf, mem_item->mapaddr);
 }
 kfree(mlxsw_pci->fw_area.items);
}
