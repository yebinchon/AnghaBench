
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlxsw_pci_mem_item {int mapaddr; int buf; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;


 int MLXSW_CMD_MBOX_SIZE ;
 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void mlxsw_pci_mbox_free(struct mlxsw_pci *mlxsw_pci,
    struct mlxsw_pci_mem_item *mbox)
{
 struct pci_dev *pdev = mlxsw_pci->pdev;

 pci_free_consistent(pdev, MLXSW_CMD_MBOX_SIZE, mbox->buf,
       mbox->mapaddr);
}
