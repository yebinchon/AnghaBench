
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cx25821_dev {int dummy; } ;


 struct cx25821_dev* pci_get_drvdata (struct pci_dev*) ;

struct cx25821_dev *cx25821_dev_get(struct pci_dev *pci)
{
 struct cx25821_dev *dev = pci_get_drvdata(pci);
 return dev;
}
