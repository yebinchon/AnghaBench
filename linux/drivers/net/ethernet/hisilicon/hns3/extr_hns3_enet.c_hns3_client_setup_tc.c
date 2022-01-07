
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct hnae3_knic_private_info {struct net_device* netdev; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ HNAE3_MAX_TC ;
 int hns3_nic_set_real_num_queue (struct net_device*) ;

__attribute__((used)) static int hns3_client_setup_tc(struct hnae3_handle *handle, u8 tc)
{
 struct hnae3_knic_private_info *kinfo = &handle->kinfo;
 struct net_device *ndev = kinfo->netdev;

 if (tc > HNAE3_MAX_TC)
  return -EINVAL;

 if (!ndev)
  return -ENODEV;

 return hns3_nic_set_real_num_queue(ndev);
}
