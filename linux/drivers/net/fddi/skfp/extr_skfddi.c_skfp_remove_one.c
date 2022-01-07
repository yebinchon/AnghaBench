
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iop; } ;
struct TYPE_3__ {int * LocalRxBuffer; int LocalRxBufferDMA; int * SharedMemAddr; int SharedMemDMA; int SharedMemSize; } ;
struct s_smc {TYPE_2__ hw; TYPE_1__ os; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;


 int MAX_FRAME_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int free_netdev (struct net_device*) ;
 int ioport_unmap (int ) ;
 int iounmap (int ) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void skfp_remove_one(struct pci_dev *pdev)
{
 struct net_device *p = pci_get_drvdata(pdev);
 struct s_smc *lp = netdev_priv(p);

 unregister_netdev(p);

 if (lp->os.SharedMemAddr) {
  dma_free_coherent(&pdev->dev,
      lp->os.SharedMemSize,
      lp->os.SharedMemAddr,
      lp->os.SharedMemDMA);
  lp->os.SharedMemAddr = ((void*)0);
 }
 if (lp->os.LocalRxBuffer) {
  dma_free_coherent(&pdev->dev,
      MAX_FRAME_SIZE,
      lp->os.LocalRxBuffer,
      lp->os.LocalRxBufferDMA);
  lp->os.LocalRxBuffer = ((void*)0);
 }



 ioport_unmap(lp->hw.iop);

 pci_release_regions(pdev);
 free_netdev(p);

 pci_disable_device(pdev);
}
