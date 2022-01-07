
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct nfp_cpp {int dummy; } ;
struct nfp6000_pcie {int bar_lock; int bar_waiters; struct pci_dev* pdev; int * dev; } ;


 int ENODEV ;
 int ENOMEM ;
 struct nfp_cpp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ NFP_CPP_INTERFACE_CHANNEL_PEROPENER ;
 scalar_t__ NFP_CPP_INTERFACE_CHANNEL_of (int ) ;
 scalar_t__ NFP_CPP_INTERFACE_TYPE_PCI ;
 scalar_t__ NFP_CPP_INTERFACE_TYPE_of (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int enable_bars (struct nfp6000_pcie*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct nfp6000_pcie*) ;
 struct nfp6000_pcie* kzalloc (int,int ) ;
 int nfp6000_get_interface (int *) ;
 int nfp6000_pcie_ops ;
 struct nfp_cpp* nfp_cpp_from_operations (int *,int *,struct nfp6000_pcie*) ;
 int pcie_print_link_status (struct pci_dev*) ;
 int spin_lock_init (int *) ;

struct nfp_cpp *nfp_cpp_from_nfp6000_pcie(struct pci_dev *pdev)
{
 struct nfp6000_pcie *nfp;
 u16 interface;
 int err;


 dev_info(&pdev->dev,
   "Netronome Flow Processor NFP4000/NFP5000/NFP6000 PCIe Card Probe\n");
 pcie_print_link_status(pdev);

 nfp = kzalloc(sizeof(*nfp), GFP_KERNEL);
 if (!nfp) {
  err = -ENOMEM;
  goto err_ret;
 }

 nfp->dev = &pdev->dev;
 nfp->pdev = pdev;
 init_waitqueue_head(&nfp->bar_waiters);
 spin_lock_init(&nfp->bar_lock);

 interface = nfp6000_get_interface(&pdev->dev);

 if (NFP_CPP_INTERFACE_TYPE_of(interface) !=
     NFP_CPP_INTERFACE_TYPE_PCI) {
  dev_err(&pdev->dev,
   "Interface type %d is not the expected %d\n",
   NFP_CPP_INTERFACE_TYPE_of(interface),
   NFP_CPP_INTERFACE_TYPE_PCI);
  err = -ENODEV;
  goto err_free_nfp;
 }

 if (NFP_CPP_INTERFACE_CHANNEL_of(interface) !=
     NFP_CPP_INTERFACE_CHANNEL_PEROPENER) {
  dev_err(&pdev->dev, "Interface channel %d is not the expected %d\n",
   NFP_CPP_INTERFACE_CHANNEL_of(interface),
   NFP_CPP_INTERFACE_CHANNEL_PEROPENER);
  err = -ENODEV;
  goto err_free_nfp;
 }

 err = enable_bars(nfp, interface);
 if (err)
  goto err_free_nfp;


 return nfp_cpp_from_operations(&nfp6000_pcie_ops, &pdev->dev, nfp);

err_free_nfp:
 kfree(nfp);
err_ret:
 dev_err(&pdev->dev, "NFP6000 PCI setup failed\n");
 return ERR_PTR(err);
}
