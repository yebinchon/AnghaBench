
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; } ;
struct hnae3_handle {int flags; } ;


 int HNAE3_SUPPORT_VF ;
 int hns3_ethtool_ops ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3vf_ethtool_ops ;

void hns3_ethtool_set_ops(struct net_device *netdev)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 if (h->flags & HNAE3_SUPPORT_VF)
  netdev->ethtool_ops = &hns3vf_ethtool_ops;
 else
  netdev->ethtool_ops = &hns3_ethtool_ops;
}
