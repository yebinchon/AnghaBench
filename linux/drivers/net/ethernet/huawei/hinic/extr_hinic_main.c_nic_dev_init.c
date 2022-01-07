
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int features; int mtu; int dev_addr; int max_mtu; int * netdev_ops; } ;
struct hinic_txq_stats {int syncp; } ;
struct hinic_rxq_stats {int syncp; } ;
struct hinic_rx_mode_work {int work; } ;
struct hinic_hwdev {int dummy; } ;
struct hinic_dev {int workq; struct hinic_hwdev* hwdev; struct net_device* netdev; struct hinic_rx_mode_work rx_mode_work; int vlan_bitmap; struct hinic_rxq_stats rx_stats; struct hinic_txq_stats tx_stats; int mgmt_lock; int rx_weight; int tx_weight; int * rxqs; int * txqs; scalar_t__ flags; int msg_enable; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_MAX_MTU ;
 int GFP_KERNEL ;
 int HINIC_MGMT_MSG_CMD_LINK_STATUS ;
 int HINIC_WQ_NAME ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct hinic_hwdev*) ;
 int MSG_ENABLE_DEFAULT ;
 int PTR_ERR (struct hinic_hwdev*) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int VLAN_BITMAP_SIZE (struct hinic_dev*) ;
 struct net_device* alloc_etherdev_mq (int,int) ;
 int cancel_work_sync (int *) ;
 int create_singlethread_workqueue (int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int devm_kzalloc (int *,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int hinic_free_hwdev (struct hinic_hwdev*) ;
 int hinic_hwdev_cb_register (struct hinic_hwdev*,int ,struct hinic_dev*,int ) ;
 int hinic_hwdev_cb_unregister (struct hinic_hwdev*,int ) ;
 int hinic_hwdev_num_qps (struct hinic_hwdev*) ;
 struct hinic_hwdev* hinic_init_hwdev (struct pci_dev*) ;
 int hinic_netdev_ops ;
 int hinic_port_add_mac (struct hinic_dev*,int ,int ) ;
 int hinic_port_get_mac (struct hinic_dev*,int ) ;
 int hinic_port_set_mtu (struct hinic_dev*,int ) ;
 int hinic_set_ethtool_ops (struct net_device*) ;
 int link_status_event_handler ;
 int netdev_features_init (struct net_device*) ;
 struct hinic_dev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int rx_weight ;
 int sema_init (int *,int) ;
 int set_features (struct hinic_dev*,int ,int ,int) ;
 int set_rx_mode ;
 int tx_weight ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int nic_dev_init(struct pci_dev *pdev)
{
 struct hinic_rx_mode_work *rx_mode_work;
 struct hinic_txq_stats *tx_stats;
 struct hinic_rxq_stats *rx_stats;
 struct hinic_dev *nic_dev;
 struct net_device *netdev;
 struct hinic_hwdev *hwdev;
 int err, num_qps;

 hwdev = hinic_init_hwdev(pdev);
 if (IS_ERR(hwdev)) {
  dev_err(&pdev->dev, "Failed to initialize HW device\n");
  return PTR_ERR(hwdev);
 }

 num_qps = hinic_hwdev_num_qps(hwdev);
 if (num_qps <= 0) {
  dev_err(&pdev->dev, "Invalid number of QPS\n");
  err = -EINVAL;
  goto err_num_qps;
 }

 netdev = alloc_etherdev_mq(sizeof(*nic_dev), num_qps);
 if (!netdev) {
  dev_err(&pdev->dev, "Failed to allocate Ethernet device\n");
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 hinic_set_ethtool_ops(netdev);
 netdev->netdev_ops = &hinic_netdev_ops;
 netdev->max_mtu = ETH_MAX_MTU;

 nic_dev = netdev_priv(netdev);
 nic_dev->netdev = netdev;
 nic_dev->hwdev = hwdev;
 nic_dev->msg_enable = MSG_ENABLE_DEFAULT;
 nic_dev->flags = 0;
 nic_dev->txqs = ((void*)0);
 nic_dev->rxqs = ((void*)0);
 nic_dev->tx_weight = tx_weight;
 nic_dev->rx_weight = rx_weight;

 sema_init(&nic_dev->mgmt_lock, 1);

 tx_stats = &nic_dev->tx_stats;
 rx_stats = &nic_dev->rx_stats;

 u64_stats_init(&tx_stats->syncp);
 u64_stats_init(&rx_stats->syncp);

 nic_dev->vlan_bitmap = devm_kzalloc(&pdev->dev,
         VLAN_BITMAP_SIZE(nic_dev),
         GFP_KERNEL);
 if (!nic_dev->vlan_bitmap) {
  err = -ENOMEM;
  goto err_vlan_bitmap;
 }

 nic_dev->workq = create_singlethread_workqueue(HINIC_WQ_NAME);
 if (!nic_dev->workq) {
  err = -ENOMEM;
  goto err_workq;
 }

 pci_set_drvdata(pdev, netdev);

 err = hinic_port_get_mac(nic_dev, netdev->dev_addr);
 if (err)
  dev_warn(&pdev->dev, "Failed to get mac address\n");

 err = hinic_port_add_mac(nic_dev, netdev->dev_addr, 0);
 if (err) {
  dev_err(&pdev->dev, "Failed to add mac\n");
  goto err_add_mac;
 }

 err = hinic_port_set_mtu(nic_dev, netdev->mtu);
 if (err) {
  dev_err(&pdev->dev, "Failed to set mtu\n");
  goto err_set_mtu;
 }

 rx_mode_work = &nic_dev->rx_mode_work;
 INIT_WORK(&rx_mode_work->work, set_rx_mode);

 netdev_features_init(netdev);

 netif_carrier_off(netdev);

 hinic_hwdev_cb_register(nic_dev->hwdev, HINIC_MGMT_MSG_CMD_LINK_STATUS,
    nic_dev, link_status_event_handler);

 err = set_features(nic_dev, 0, nic_dev->netdev->features, 1);
 if (err)
  goto err_set_features;

 SET_NETDEV_DEV(netdev, &pdev->dev);

 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to register netdev\n");
  goto err_reg_netdev;
 }

 return 0;

err_reg_netdev:
err_set_features:
 hinic_hwdev_cb_unregister(nic_dev->hwdev,
      HINIC_MGMT_MSG_CMD_LINK_STATUS);
 cancel_work_sync(&rx_mode_work->work);

err_set_mtu:
err_add_mac:
 pci_set_drvdata(pdev, ((void*)0));
 destroy_workqueue(nic_dev->workq);

err_workq:
err_vlan_bitmap:
 free_netdev(netdev);

err_alloc_etherdev:
err_num_qps:
 hinic_free_hwdev(hwdev);
 return err;
}
