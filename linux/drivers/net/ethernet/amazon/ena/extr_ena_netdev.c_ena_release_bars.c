
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ena_com_dev {int dummy; } ;


 int ENA_BAR_MASK ;
 int IORESOURCE_MEM ;
 int pci_release_selected_regions (struct pci_dev*,int) ;
 int pci_select_bars (struct pci_dev*,int ) ;

__attribute__((used)) static void ena_release_bars(struct ena_com_dev *ena_dev, struct pci_dev *pdev)
{
 int release_bars = pci_select_bars(pdev, IORESOURCE_MEM) & ENA_BAR_MASK;

 pci_release_selected_regions(pdev, release_bars);
}
