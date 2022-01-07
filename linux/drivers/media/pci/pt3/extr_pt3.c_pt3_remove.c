
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_board {int * regs; int pdev; struct pt3_board* i2c_buf; int i2c_adap; } ;
struct pci_dev {int dummy; } ;


 int PT3_NUM_FE ;
 int i2c_del_adapter (int *) ;
 int kfree (struct pt3_board*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pt3_board* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (int ,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pt3_cleanup_adapter (struct pt3_board*,int) ;

__attribute__((used)) static void pt3_remove(struct pci_dev *pdev)
{
 struct pt3_board *pt3;
 int i;

 pt3 = pci_get_drvdata(pdev);
 for (i = PT3_NUM_FE - 1; i >= 0; i--)
  pt3_cleanup_adapter(pt3, i);
 i2c_del_adapter(&pt3->i2c_adap);
 kfree(pt3->i2c_buf);
 pci_iounmap(pt3->pdev, pt3->regs[0]);
 pci_iounmap(pt3->pdev, pt3->regs[1]);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(pt3);
}
