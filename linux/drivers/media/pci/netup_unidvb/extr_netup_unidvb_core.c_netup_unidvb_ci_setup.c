
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct netup_unidvb_dev {scalar_t__ bmmio0; } ;


 int NETUP_UNIDVB_IRQ_CI ;
 scalar_t__ REG_IMASK_SET ;
 int netup_unidvb_ci_register (struct netup_unidvb_dev*,int,struct pci_dev*) ;
 int netup_unidvb_ci_unregister (struct netup_unidvb_dev*,int ) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int netup_unidvb_ci_setup(struct netup_unidvb_dev *ndev,
     struct pci_dev *pci_dev)
{
 int res;

 writew(NETUP_UNIDVB_IRQ_CI, ndev->bmmio0 + REG_IMASK_SET);
 res = netup_unidvb_ci_register(ndev, 0, pci_dev);
 if (res)
  return res;
 res = netup_unidvb_ci_register(ndev, 1, pci_dev);
 if (res)
  netup_unidvb_ci_unregister(ndev, 0);
 return res;
}
