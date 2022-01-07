
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct bnx2x {struct pci_dev* pdev; } ;


 int pci_domain_nr (int ) ;

__attribute__((used)) static int bnx2x_vf_domain(struct bnx2x *bp, int vfid)
{
 struct pci_dev *dev = bp->pdev;

 return pci_domain_nr(dev->bus);
}
