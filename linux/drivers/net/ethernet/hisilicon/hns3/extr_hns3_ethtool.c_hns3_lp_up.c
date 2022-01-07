
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hnae3_handle {int dummy; } ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;


 int HNS3_NIC_LB_SETUP_USEC ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_lp_setup (struct net_device*,int,int) ;
 int hns3_nic_reset_all_ring (struct hnae3_handle*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hns3_lp_up(struct net_device *ndev, enum hnae3_loop loop_mode)
{
 struct hnae3_handle *h = hns3_get_handle(ndev);
 int ret;

 ret = hns3_nic_reset_all_ring(h);
 if (ret)
  return ret;

 ret = hns3_lp_setup(ndev, loop_mode, 1);
 usleep_range(HNS3_NIC_LB_SETUP_USEC, HNS3_NIC_LB_SETUP_USEC * 2);

 return ret;
}
