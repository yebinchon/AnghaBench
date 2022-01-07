
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; int flags; } ;
struct rtl8169_private {int * RxDescArray; int * TxDescArray; int TxPhyAddr; int RxPhyAddr; int phydev; TYPE_1__ wk; struct pci_dev* pci_dev; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;


 int R8169_RX_RING_BYTES ;
 int R8169_TX_RING_BYTES ;
 int RTL_FLAG_MAX ;
 int bitmap_zero (int ,int ) ;
 int cancel_work_sync (int *) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int pci_free_irq (struct pci_dev*,int ,struct rtl8169_private*) ;
 int phy_disconnect (int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int rtl8169_down (struct net_device*) ;
 int rtl8169_update_counters (struct rtl8169_private*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_close(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;

 pm_runtime_get_sync(&pdev->dev);


 rtl8169_update_counters(tp);

 rtl_lock_work(tp);

 bitmap_zero(tp->wk.flags, RTL_FLAG_MAX);

 rtl8169_down(dev);
 rtl_unlock_work(tp);

 cancel_work_sync(&tp->wk.work);

 phy_disconnect(tp->phydev);

 pci_free_irq(pdev, 0, tp);

 dma_free_coherent(&pdev->dev, R8169_RX_RING_BYTES, tp->RxDescArray,
     tp->RxPhyAddr);
 dma_free_coherent(&pdev->dev, R8169_TX_RING_BYTES, tp->TxDescArray,
     tp->TxPhyAddr);
 tp->TxDescArray = ((void*)0);
 tp->RxDescArray = ((void*)0);

 pm_runtime_put_sync(&pdev->dev);

 return 0;
}
