
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hns3_nic_priv {int state; } ;


 int HNS3_NIC_STATE_RESETTING ;
 struct hns3_nic_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool hns3_nic_resetting(struct net_device *netdev)
{
 struct hns3_nic_priv *priv = netdev_priv(netdev);

 return test_bit(HNS3_NIC_STATE_RESETTING, &priv->state);
}
