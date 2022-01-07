
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_dev {int pti_ioaddr; int * port; } ;
struct pci_dev {int dummy; } ;


 unsigned int PTITTY_MINOR_NUM ;
 int iounmap (int ) ;
 int kfree (struct pti_dev*) ;
 int misc_deregister (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pti_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int pti_char_driver ;
 int pti_console ;
 int pti_tty_driver ;
 int tty_port_destroy (int *) ;
 int tty_unregister_device (int ,unsigned int) ;
 int unregister_console (int *) ;

__attribute__((used)) static void pti_pci_remove(struct pci_dev *pdev)
{
 struct pti_dev *drv_data = pci_get_drvdata(pdev);
 unsigned int a;

 unregister_console(&pti_console);

 for (a = 0; a < PTITTY_MINOR_NUM; a++) {
  tty_unregister_device(pti_tty_driver, a);
  tty_port_destroy(&drv_data->port[a]);
 }

 iounmap(drv_data->pti_ioaddr);
 kfree(drv_data);
 pci_release_region(pdev, 1);
 pci_disable_device(pdev);

 misc_deregister(&pti_char_driver);
}
