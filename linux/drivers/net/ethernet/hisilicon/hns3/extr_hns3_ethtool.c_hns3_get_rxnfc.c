
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int num_tqps; } ;
struct hnae3_handle {TYPE_3__* ae_algo; TYPE_1__ kinfo; } ;
struct ethtool_rxnfc {int cmd; int data; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* get_rss_tuple ) (struct hnae3_handle*,struct ethtool_rxnfc*) ;int (* get_fd_rule_cnt ) (struct hnae3_handle*,struct ethtool_rxnfc*) ;int (* get_fd_rule_info ) (struct hnae3_handle*,struct ethtool_rxnfc*) ;int (* get_fd_all_rules ) (struct hnae3_handle*,struct ethtool_rxnfc*,int *) ;} ;


 int EOPNOTSUPP ;





 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int stub1 (struct hnae3_handle*,struct ethtool_rxnfc*) ;
 int stub2 (struct hnae3_handle*,struct ethtool_rxnfc*) ;
 int stub3 (struct hnae3_handle*,struct ethtool_rxnfc*) ;
 int stub4 (struct hnae3_handle*,struct ethtool_rxnfc*,int *) ;

__attribute__((used)) static int hns3_get_rxnfc(struct net_device *netdev,
     struct ethtool_rxnfc *cmd,
     u32 *rule_locs)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);

 switch (cmd->cmd) {
 case 128:
  cmd->data = h->kinfo.num_tqps;
  return 0;
 case 129:
  if (h->ae_algo->ops->get_rss_tuple)
   return h->ae_algo->ops->get_rss_tuple(h, cmd);
  return -EOPNOTSUPP;
 case 131:
  if (h->ae_algo->ops->get_fd_rule_cnt)
   return h->ae_algo->ops->get_fd_rule_cnt(h, cmd);
  return -EOPNOTSUPP;
 case 130:
  if (h->ae_algo->ops->get_fd_rule_info)
   return h->ae_algo->ops->get_fd_rule_info(h, cmd);
  return -EOPNOTSUPP;
 case 132:
  if (h->ae_algo->ops->get_fd_all_rules)
   return h->ae_algo->ops->get_fd_all_rules(h, cmd,
         rule_locs);
  return -EOPNOTSUPP;
 default:
  return -EOPNOTSUPP;
 }
}
