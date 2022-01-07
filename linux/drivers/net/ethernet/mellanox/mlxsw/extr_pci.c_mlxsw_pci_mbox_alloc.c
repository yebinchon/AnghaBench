
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mlxsw_pci_mem_item {int buf; int mapaddr; int size; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;


 int ENOMEM ;
 int MLXSW_CMD_MBOX_SIZE ;
 int dev_err (int *,char*) ;
 int pci_alloc_consistent (struct pci_dev*,int ,int *) ;

__attribute__((used)) static int mlxsw_pci_mbox_alloc(struct mlxsw_pci *mlxsw_pci,
    struct mlxsw_pci_mem_item *mbox)
{
 struct pci_dev *pdev = mlxsw_pci->pdev;
 int err = 0;

 mbox->size = MLXSW_CMD_MBOX_SIZE;
 mbox->buf = pci_alloc_consistent(pdev, MLXSW_CMD_MBOX_SIZE,
      &mbox->mapaddr);
 if (!mbox->buf) {
  dev_err(&pdev->dev, "Failed allocating memory for mailbox\n");
  err = -ENOMEM;
 }

 return err;
}
