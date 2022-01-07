
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; } ;
struct net_device {int max_mtu; int * netdev_ops; int priv_flags; int watchdog_timeo; } ;
struct hns3_nic_priv {struct hnae3_handle* ae_handle; int * ring_data; int state; int * dev; scalar_t__ tx_timeout_count; struct net_device* netdev; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct hnae3_handle {void* priv; TYPE_3__ kinfo; int msg_enable; TYPE_2__* ae_algo; struct pci_dev* pdev; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* get_tqps_and_rss_info ) (struct hnae3_handle*,int *,int *) ;} ;


 int DEFAULT_MSG_LEVEL ;
 int ENOMEM ;
 int HNS3_MAX_MTU ;
 int HNS3_NIC_STATE_DOWN ;
 int HNS3_NIC_STATE_INITED ;
 int HNS3_TX_TIMEOUT ;
 int IFF_UNICAST_FLT ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int debug ;
 int dev_err (int *,char*,...) ;
 int free_netdev (struct net_device*) ;
 int hns3_client_start (struct hnae3_handle*) ;
 int hns3_dbg_init (struct hnae3_handle*) ;
 int hns3_dcbnl_setup (struct hnae3_handle*) ;
 int hns3_ethtool_set_ops (struct net_device*) ;
 int hns3_get_ring_config (struct hns3_nic_priv*) ;
 int hns3_info_show (struct hns3_nic_priv*) ;
 int hns3_init_all_ring (struct hns3_nic_priv*) ;
 int hns3_init_mac_addr (struct net_device*,int) ;
 int hns3_init_phy (struct net_device*) ;
 int hns3_nic_alloc_vector_data (struct hns3_nic_priv*) ;
 int hns3_nic_dealloc_vector_data (struct hns3_nic_priv*) ;
 int hns3_nic_init_vector_data (struct hns3_nic_priv*) ;
 int hns3_nic_netdev_ops ;
 int hns3_nic_uninit_vector_data (struct hns3_nic_priv*) ;
 int hns3_set_default_feature (struct net_device*) ;
 int hns3_uninit_all_ring (struct hns3_nic_priv*) ;
 int hns3_uninit_phy (struct net_device*) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_msg_drv (struct hnae3_handle*) ;
 int netif_msg_init (int ,int ) ;
 int register_netdev (struct net_device*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct hnae3_handle*,int *,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int hns3_client_init(struct hnae3_handle *handle)
{
 struct pci_dev *pdev = handle->pdev;
 u16 alloc_tqps, max_rss_size;
 struct hns3_nic_priv *priv;
 struct net_device *netdev;
 int ret;

 handle->ae_algo->ops->get_tqps_and_rss_info(handle, &alloc_tqps,
          &max_rss_size);
 netdev = alloc_etherdev_mq(sizeof(struct hns3_nic_priv), alloc_tqps);
 if (!netdev)
  return -ENOMEM;

 priv = netdev_priv(netdev);
 priv->dev = &pdev->dev;
 priv->netdev = netdev;
 priv->ae_handle = handle;
 priv->tx_timeout_count = 0;
 set_bit(HNS3_NIC_STATE_DOWN, &priv->state);

 handle->msg_enable = netif_msg_init(debug, DEFAULT_MSG_LEVEL);

 handle->kinfo.netdev = netdev;
 handle->priv = (void *)priv;

 hns3_init_mac_addr(netdev, 1);

 hns3_set_default_feature(netdev);

 netdev->watchdog_timeo = HNS3_TX_TIMEOUT;
 netdev->priv_flags |= IFF_UNICAST_FLT;
 netdev->netdev_ops = &hns3_nic_netdev_ops;
 SET_NETDEV_DEV(netdev, &pdev->dev);
 hns3_ethtool_set_ops(netdev);


 netif_carrier_off(netdev);

 ret = hns3_get_ring_config(priv);
 if (ret) {
  ret = -ENOMEM;
  goto out_get_ring_cfg;
 }

 ret = hns3_nic_alloc_vector_data(priv);
 if (ret) {
  ret = -ENOMEM;
  goto out_alloc_vector_data;
 }

 ret = hns3_nic_init_vector_data(priv);
 if (ret) {
  ret = -ENOMEM;
  goto out_init_vector_data;
 }

 ret = hns3_init_all_ring(priv);
 if (ret) {
  ret = -ENOMEM;
  goto out_init_ring_data;
 }

 ret = hns3_init_phy(netdev);
 if (ret)
  goto out_init_phy;

 ret = register_netdev(netdev);
 if (ret) {
  dev_err(priv->dev, "probe register netdev fail!\n");
  goto out_reg_netdev_fail;
 }

 ret = hns3_client_start(handle);
 if (ret) {
  dev_err(priv->dev, "hns3_client_start fail! ret=%d\n", ret);
  goto out_client_start;
 }

 hns3_dcbnl_setup(handle);

 hns3_dbg_init(handle);


 netdev->max_mtu = HNS3_MAX_MTU;

 set_bit(HNS3_NIC_STATE_INITED, &priv->state);

 if (netif_msg_drv(handle))
  hns3_info_show(priv);

 return ret;

out_client_start:
 unregister_netdev(netdev);
out_reg_netdev_fail:
 hns3_uninit_phy(netdev);
out_init_phy:
 hns3_uninit_all_ring(priv);
out_init_ring_data:
 hns3_nic_uninit_vector_data(priv);
out_init_vector_data:
 hns3_nic_dealloc_vector_data(priv);
out_alloc_vector_data:
 priv->ring_data = ((void*)0);
out_get_ring_cfg:
 priv->ae_handle = ((void*)0);
 free_netdev(netdev);
 return ret;
}
