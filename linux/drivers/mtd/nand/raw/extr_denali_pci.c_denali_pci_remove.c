
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct denali_controller {int host; int reg; } ;


 int denali_remove (struct denali_controller*) ;
 int iounmap (int ) ;
 struct denali_controller* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void denali_pci_remove(struct pci_dev *dev)
{
 struct denali_controller *denali = pci_get_drvdata(dev);

 denali_remove(denali);
 iounmap(denali->reg);
 iounmap(denali->host);
}
