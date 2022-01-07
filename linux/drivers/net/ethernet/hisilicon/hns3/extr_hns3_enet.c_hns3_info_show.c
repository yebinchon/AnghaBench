
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_2__* netdev; int dev; TYPE_1__* ae_handle; } ;
struct hnae3_knic_private_info {int num_tc; int num_rx_desc; int num_tx_desc; int rx_buf_len; int req_rss_size; int rss_size; int num_tqps; } ;
struct TYPE_4__ {int max_mtu; int dev_addr; } ;
struct TYPE_3__ {struct hnae3_knic_private_info kinfo; } ;


 int dev_info (int ,char*,int ) ;

__attribute__((used)) static void hns3_info_show(struct hns3_nic_priv *priv)
{
 struct hnae3_knic_private_info *kinfo = &priv->ae_handle->kinfo;

 dev_info(priv->dev, "MAC address: %pM\n", priv->netdev->dev_addr);
 dev_info(priv->dev, "Task queue pairs numbers: %d\n", kinfo->num_tqps);
 dev_info(priv->dev, "RSS size: %d\n", kinfo->rss_size);
 dev_info(priv->dev, "Allocated RSS size: %d\n", kinfo->req_rss_size);
 dev_info(priv->dev, "RX buffer length: %d\n", kinfo->rx_buf_len);
 dev_info(priv->dev, "Desc num per TX queue: %d\n", kinfo->num_tx_desc);
 dev_info(priv->dev, "Desc num per RX queue: %d\n", kinfo->num_rx_desc);
 dev_info(priv->dev, "Total number of enabled TCs: %d\n", kinfo->num_tc);
 dev_info(priv->dev, "Max mtu size: %d\n", priv->netdev->max_mtu);
}
