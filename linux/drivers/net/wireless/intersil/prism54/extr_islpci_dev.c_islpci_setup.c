
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int device; int irq; int dev; } ;
struct net_device {unsigned long mem_start; scalar_t__ mem_end; TYPE_1__* wireless_data; int type; int watchdog_timeo; int dev_addr; int addr_len; int * ethtool_ops; int * wireless_handlers; int * netdev_ops; int irq; int base_addr; } ;
struct TYPE_6__ {int * spy_data; } ;
struct TYPE_7__ {scalar_t__ iw_mode; int state_off; int firmware; scalar_t__ reset_task_pending; int reset_task; scalar_t__ stats_timestamp; int stats_work; int state; int slock; int stats_lock; int mgmt_wqueue; int * mgmt_received; int mgmt_lock; int reset_done; scalar_t__ device_base; TYPE_1__ wireless_data; int spy_data; int monitor_type; struct net_device* ndev; struct pci_dev* pdev; } ;
typedef TYPE_2__ islpci_private ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211 ;
 int DEBUG (int ,char*,...) ;
 int ETH_ALEN ;
 int INIT_WORK (int *,int ) ;
 int ISL3877_IMAGE_FILE ;
 int ISL3886_IMAGE_FILE ;
 int ISL3890_IMAGE_FILE ;
 scalar_t__ ISL38XX_PCI_MEM_SIZE ;
 int ISLPCI_TX_TIMEOUT ;
 scalar_t__ IW_MODE_MONITOR ;
 int PRV_STATE_OFF ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int SHOW_ERROR_MESSAGES ;
 int SHOW_TRACING ;
 struct net_device* alloc_etherdev (int) ;
 int dummy_mac ;
 int free_netdev (struct net_device*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ islpci_alloc_memory (TYPE_2__*) ;
 int islpci_do_reset_and_wake ;
 int islpci_ethtool_ops ;
 int islpci_free_memory (TYPE_2__*) ;
 int islpci_netdev_ops ;
 int memcpy (int ,int ,int ) ;
 int mutex_init (int *) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int prism54_handler_def ;
 int prism54_update_stats ;
 scalar_t__ register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int strcpy (int ,int ) ;
 int wlan_type ;

struct net_device *
islpci_setup(struct pci_dev *pdev)
{
 islpci_private *priv;
 struct net_device *ndev = alloc_etherdev(sizeof (islpci_private));

 if (!ndev)
  return ndev;

 pci_set_drvdata(pdev, ndev);
 SET_NETDEV_DEV(ndev, &pdev->dev);
 SET_NETDEV_DEVTYPE(ndev, &wlan_type);


 ndev->base_addr = pci_resource_start(pdev, 0);
 ndev->irq = pdev->irq;


 ndev->netdev_ops = &islpci_netdev_ops;
 ndev->wireless_handlers = &prism54_handler_def;
 ndev->ethtool_ops = &islpci_ethtool_ops;


 ndev->addr_len = ETH_ALEN;

 memcpy(ndev->dev_addr, dummy_mac, ETH_ALEN);

 ndev->watchdog_timeo = ISLPCI_TX_TIMEOUT;


 priv = netdev_priv(ndev);
 priv->ndev = ndev;
 priv->pdev = pdev;
 priv->monitor_type = ARPHRD_IEEE80211;
 priv->ndev->type = (priv->iw_mode == IW_MODE_MONITOR) ?
  priv->monitor_type : ARPHRD_ETHER;


 priv->wireless_data.spy_data = &priv->spy_data;
 ndev->wireless_data = &priv->wireless_data;


 ndev->mem_start = (unsigned long) priv->device_base;
 ndev->mem_end = ndev->mem_start + ISL38XX_PCI_MEM_SIZE;





 init_waitqueue_head(&priv->reset_done);


 mutex_init(&priv->mgmt_lock);
 priv->mgmt_received = ((void*)0);
 init_waitqueue_head(&priv->mgmt_wqueue);
 mutex_init(&priv->stats_lock);
 spin_lock_init(&priv->slock);


 priv->state = PRV_STATE_OFF;
 priv->state_off = 1;


 INIT_WORK(&priv->stats_work, prism54_update_stats);
 priv->stats_timestamp = 0;

 INIT_WORK(&priv->reset_task, islpci_do_reset_and_wake);
 priv->reset_task_pending = 0;


 if (islpci_alloc_memory(priv))
  goto do_free_netdev;


 switch (pdev->device) {
 case 0x3877:
  strcpy(priv->firmware, ISL3877_IMAGE_FILE);
  break;

 case 0x3886:
  strcpy(priv->firmware, ISL3886_IMAGE_FILE);
  break;

 default:
  strcpy(priv->firmware, ISL3890_IMAGE_FILE);
  break;
 }

 if (register_netdev(ndev)) {
  DEBUG(SHOW_ERROR_MESSAGES,
        "ERROR: register_netdev() failed\n");
  goto do_islpci_free_memory;
 }

 return ndev;

      do_islpci_free_memory:
 islpci_free_memory(priv);
      do_free_netdev:
 free_netdev(ndev);
 priv = ((void*)0);
 return ((void*)0);
}
