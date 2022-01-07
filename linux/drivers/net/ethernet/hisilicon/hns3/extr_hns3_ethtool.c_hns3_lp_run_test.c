
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int queue_mapping; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct hns3_nic_priv {int dummy; } ;
typedef scalar_t__ netdev_tx_t ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;


 scalar_t__ ETH_HLEN ;
 int GFP_KERNEL ;
 int HNS3_NIC_LB_TEST_NO_MEM_ERR ;
 scalar_t__ HNS3_NIC_LB_TEST_PACKET_SIZE ;
 scalar_t__ HNS3_NIC_LB_TEST_PKT_NUM ;
 int HNS3_NIC_LB_TEST_RING_ID ;
 int HNS3_NIC_LB_TEST_RX_CNT_ERR ;
 int HNS3_NIC_LB_TEST_TX_CNT_ERR ;
 scalar_t__ NETDEV_TX_OK ;
 scalar_t__ NET_IP_ALIGN ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 scalar_t__ hns3_lb_check_rx_ring (struct hns3_nic_priv*,scalar_t__) ;
 int hns3_lb_clear_tx_ring (struct hns3_nic_priv*,int ,int ,scalar_t__) ;
 int hns3_lp_setup_skb (struct sk_buff*) ;
 scalar_t__ hns3_nic_net_xmit (struct sk_buff*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int msleep (int) ;
 int netdev_err (struct net_device*,char*,int,...) ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int skb_get (struct sk_buff*) ;

__attribute__((used)) static int hns3_lp_run_test(struct net_device *ndev, enum hnae3_loop mode)
{
 struct hns3_nic_priv *priv = netdev_priv(ndev);
 struct sk_buff *skb;
 u32 i, good_cnt;
 int ret_val = 0;

 skb = alloc_skb(HNS3_NIC_LB_TEST_PACKET_SIZE + ETH_HLEN + NET_IP_ALIGN,
   GFP_KERNEL);
 if (!skb)
  return HNS3_NIC_LB_TEST_NO_MEM_ERR;

 skb->dev = ndev;
 hns3_lp_setup_skb(skb);
 skb->queue_mapping = HNS3_NIC_LB_TEST_RING_ID;

 good_cnt = 0;
 for (i = 0; i < HNS3_NIC_LB_TEST_PKT_NUM; i++) {
  netdev_tx_t tx_ret;

  skb_get(skb);
  tx_ret = hns3_nic_net_xmit(skb, ndev);
  if (tx_ret == NETDEV_TX_OK) {
   good_cnt++;
  } else {
   kfree_skb(skb);
   netdev_err(ndev, "hns3_lb_run_test xmit failed: %d\n",
       tx_ret);
  }
 }
 if (good_cnt != HNS3_NIC_LB_TEST_PKT_NUM) {
  ret_val = HNS3_NIC_LB_TEST_TX_CNT_ERR;
  netdev_err(ndev, "mode %d sent fail, cnt=0x%x, budget=0x%x\n",
      mode, good_cnt, HNS3_NIC_LB_TEST_PKT_NUM);
  goto out;
 }


 msleep(200);

 good_cnt = hns3_lb_check_rx_ring(priv, HNS3_NIC_LB_TEST_PKT_NUM);
 if (good_cnt != HNS3_NIC_LB_TEST_PKT_NUM) {
  ret_val = HNS3_NIC_LB_TEST_RX_CNT_ERR;
  netdev_err(ndev, "mode %d recv fail, cnt=0x%x, budget=0x%x\n",
      mode, good_cnt, HNS3_NIC_LB_TEST_PKT_NUM);
 }

out:
 hns3_lb_clear_tx_ring(priv, HNS3_NIC_LB_TEST_RING_ID,
         HNS3_NIC_LB_TEST_RING_ID,
         HNS3_NIC_LB_TEST_PKT_NUM);

 kfree_skb(skb);
 return ret_val;
}
