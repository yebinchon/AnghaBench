
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciefd_board {int reg_base; } ;
struct pci_dev {int dummy; } ;


 int pci_disable_device (struct pci_dev*) ;
 struct pciefd_board* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pciefd_can_remove_all (struct pciefd_board*) ;

__attribute__((used)) static void peak_pciefd_remove(struct pci_dev *pdev)
{
 struct pciefd_board *pciefd = pci_get_drvdata(pdev);


 pciefd_can_remove_all(pciefd);

 pci_iounmap(pdev, pciefd->reg_base);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
