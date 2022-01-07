
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rtl8169_private {int * TxDescArray; int TxPhyAddr; int * RxDescArray; int RxPhyAddr; int phydev; int napi; TYPE_1__ wk; struct pci_dev* pci_dev; } ;
struct pci_dev {int dev; } ;
struct net_device {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int R8169_RX_RING_BYTES ;
 int R8169_TX_RING_BYTES ;
 int RTL_FLAG_TASK_ENABLED ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int hw ;
 int napi_enable (int *) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_warn (struct rtl8169_private*,int ,struct net_device*,char*) ;
 int pci_free_irq (struct pci_dev*,int ,struct rtl8169_private*) ;
 int pci_request_irq (struct pci_dev*,int ,int ,int *,struct rtl8169_private*,int ) ;
 int phy_start (int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_put_sync (int *) ;
 int r8169_phy_connect (struct rtl8169_private*) ;
 int rtl8169_init_counter_offsets (struct rtl8169_private*) ;
 int rtl8169_init_phy (struct net_device*,struct rtl8169_private*) ;
 int rtl8169_init_ring (struct rtl8169_private*) ;
 int rtl8169_interrupt ;
 int rtl8169_rx_clear (struct rtl8169_private*) ;
 int rtl_hw_start (struct rtl8169_private*) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_pll_power_up (struct rtl8169_private*) ;
 int rtl_release_firmware (struct rtl8169_private*) ;
 int rtl_request_firmware (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int rtl_open(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;
 int retval = -ENOMEM;

 pm_runtime_get_sync(&pdev->dev);





 tp->TxDescArray = dma_alloc_coherent(&pdev->dev, R8169_TX_RING_BYTES,
          &tp->TxPhyAddr, GFP_KERNEL);
 if (!tp->TxDescArray)
  goto err_pm_runtime_put;

 tp->RxDescArray = dma_alloc_coherent(&pdev->dev, R8169_RX_RING_BYTES,
          &tp->RxPhyAddr, GFP_KERNEL);
 if (!tp->RxDescArray)
  goto err_free_tx_0;

 retval = rtl8169_init_ring(tp);
 if (retval < 0)
  goto err_free_rx_1;

 rtl_request_firmware(tp);

 retval = pci_request_irq(pdev, 0, rtl8169_interrupt, ((void*)0), tp,
     dev->name);
 if (retval < 0)
  goto err_release_fw_2;

 retval = r8169_phy_connect(tp);
 if (retval)
  goto err_free_irq;

 rtl_lock_work(tp);

 set_bit(RTL_FLAG_TASK_ENABLED, tp->wk.flags);

 napi_enable(&tp->napi);

 rtl8169_init_phy(dev, tp);

 rtl_pll_power_up(tp);

 rtl_hw_start(tp);

 if (!rtl8169_init_counter_offsets(tp))
  netif_warn(tp, hw, dev, "counter reset/update failed\n");

 phy_start(tp->phydev);
 netif_start_queue(dev);

 rtl_unlock_work(tp);

 pm_runtime_put_sync(&pdev->dev);
out:
 return retval;

err_free_irq:
 pci_free_irq(pdev, 0, tp);
err_release_fw_2:
 rtl_release_firmware(tp);
 rtl8169_rx_clear(tp);
err_free_rx_1:
 dma_free_coherent(&pdev->dev, R8169_RX_RING_BYTES, tp->RxDescArray,
     tp->RxPhyAddr);
 tp->RxDescArray = ((void*)0);
err_free_tx_0:
 dma_free_coherent(&pdev->dev, R8169_TX_RING_BYTES, tp->TxDescArray,
     tp->TxPhyAddr);
 tp->TxDescArray = ((void*)0);
err_pm_runtime_put:
 pm_runtime_put_noidle(&pdev->dev);
 goto out;
}
