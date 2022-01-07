
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int use_adaptive_tx_coalesce; int use_adaptive_rx_coalesce; } ;


 int hns3_check_gl_coalesce_para (struct net_device*,struct ethtool_coalesce*) ;
 int hns3_check_rl_coalesce_para (struct net_device*,struct ethtool_coalesce*) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_info (struct net_device*,char*,int,int) ;

__attribute__((used)) static int hns3_check_coalesce_para(struct net_device *netdev,
        struct ethtool_coalesce *cmd)
{
 int ret;

 ret = hns3_check_gl_coalesce_para(netdev, cmd);
 if (ret) {
  netdev_err(netdev,
      "Check gl coalesce param fail. ret = %d\n", ret);
  return ret;
 }

 ret = hns3_check_rl_coalesce_para(netdev, cmd);
 if (ret) {
  netdev_err(netdev,
      "Check rl coalesce param fail. ret = %d\n", ret);
  return ret;
 }

 if (cmd->use_adaptive_tx_coalesce == 1 ||
     cmd->use_adaptive_rx_coalesce == 1) {
  netdev_info(netdev,
       "adaptive-tx=%d and adaptive-rx=%d, tx_usecs or rx_usecs will changed dynamically.\n",
       cmd->use_adaptive_tx_coalesce,
       cmd->use_adaptive_rx_coalesce);
 }

 return 0;
}
