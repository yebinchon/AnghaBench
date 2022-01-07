
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nfp_net_vf {int q_bar; int ddir; struct nfp_net* nn; } ;
struct TYPE_2__ {int ctrl_bar; } ;
struct nfp_net {TYPE_1__ dp; int tx_bar; int rx_bar; int debugfs_dir; } ;


 int iounmap (int ) ;
 int kfree (struct nfp_net_vf*) ;
 int nfp_net_clean (struct nfp_net*) ;
 int nfp_net_debugfs_dir_clean (int *) ;
 int nfp_net_free (struct nfp_net*) ;
 int nfp_net_irqs_disable (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct nfp_net_vf* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void nfp_netvf_pci_remove(struct pci_dev *pdev)
{
 struct nfp_net_vf *vf;
 struct nfp_net *nn;

 vf = pci_get_drvdata(pdev);
 if (!vf)
  return;

 nn = vf->nn;




 nfp_net_debugfs_dir_clean(&nn->debugfs_dir);
 nfp_net_debugfs_dir_clean(&vf->ddir);

 nfp_net_clean(nn);

 nfp_net_irqs_disable(pdev);

 if (!vf->q_bar) {
  iounmap(nn->rx_bar);
  iounmap(nn->tx_bar);
 } else {
  iounmap(vf->q_bar);
 }
 iounmap(nn->dp.ctrl_bar);

 nfp_net_free(nn);

 pci_release_regions(pdev);
 pci_disable_device(pdev);

 pci_set_drvdata(pdev, ((void*)0));
 kfree(vf);
}
