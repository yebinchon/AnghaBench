
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum hnae3_loop { ____Placeholder_hnae3_loop } hnae3_loop ;


 int HNS3_NIC_LB_SETUP_USEC ;
 int hns3_lp_setup (struct net_device*,int,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hns3_lp_down(struct net_device *ndev, enum hnae3_loop loop_mode)
{
 int ret;

 ret = hns3_lp_setup(ndev, loop_mode, 0);
 if (ret) {
  netdev_err(ndev, "lb_setup return error: %d\n", ret);
  return ret;
 }

 usleep_range(HNS3_NIC_LB_SETUP_USEC, HNS3_NIC_LB_SETUP_USEC * 2);

 return 0;
}
