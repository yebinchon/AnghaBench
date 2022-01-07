
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct fm10k_intfc {int * iov_data; } ;


 int fm10k_iov_suspend (struct pci_dev*) ;
 int kfree_rcu (int *,int ) ;
 struct fm10k_intfc* pci_get_drvdata (struct pci_dev*) ;
 int rcu ;

__attribute__((used)) static void fm10k_iov_free_data(struct pci_dev *pdev)
{
 struct fm10k_intfc *interface = pci_get_drvdata(pdev);

 if (!interface->iov_data)
  return;


 fm10k_iov_suspend(pdev);


 kfree_rcu(interface->iov_data, rcu);
 interface->iov_data = ((void*)0);
}
