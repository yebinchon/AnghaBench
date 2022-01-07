
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_nic_priv {int state; } ;
struct hnae3_knic_private_info {int netdev; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;


 int HNS3_NIC_STATE_RESETTING ;
 int clear_bit (int ,int *) ;
 int hns3_nic_net_open (int ) ;
 int netdev_err (int ,char*,int) ;
 struct hns3_nic_priv* netdev_priv (int ) ;
 scalar_t__ netif_running (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int hns3_reset_notify_up_enet(struct hnae3_handle *handle)
{
 struct hnae3_knic_private_info *kinfo = &handle->kinfo;
 struct hns3_nic_priv *priv = netdev_priv(kinfo->netdev);
 int ret = 0;

 clear_bit(HNS3_NIC_STATE_RESETTING, &priv->state);

 if (netif_running(kinfo->netdev)) {
  ret = hns3_nic_net_open(kinfo->netdev);
  if (ret) {
   set_bit(HNS3_NIC_STATE_RESETTING, &priv->state);
   netdev_err(kinfo->netdev,
       "net up fail, ret=%d!\n", ret);
   return ret;
  }
 }

 return ret;
}
