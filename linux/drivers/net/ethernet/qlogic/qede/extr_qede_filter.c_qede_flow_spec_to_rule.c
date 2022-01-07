
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int dummy; } ;
struct ethtool_rx_flow_spec_input {struct ethtool_rx_flow_spec* fs; } ;
struct ethtool_rx_flow_spec {int flow_type; int location; } ;
struct ethtool_rx_flow_rule {TYPE_1__* rule; } ;
typedef int __be16 ;
struct TYPE_2__ {int action; } ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int FLOW_EXT ;
 scalar_t__ IS_ERR (struct ethtool_rx_flow_rule*) ;
 int NETIF_MSG_IFUP ;
 int PTR_ERR (struct ethtool_rx_flow_rule*) ;




 struct ethtool_rx_flow_rule* ethtool_rx_flow_rule_create (struct ethtool_rx_flow_spec_input*) ;
 int ethtool_rx_flow_rule_destroy (struct ethtool_rx_flow_rule*) ;
 int htons (int ) ;
 int qede_flow_spec_validate (struct qede_dev*,int *,struct qede_arfs_tuple*,int ) ;
 scalar_t__ qede_flow_spec_validate_unused (struct qede_dev*,struct ethtool_rx_flow_spec*) ;
 scalar_t__ qede_parse_flow_attr (struct qede_dev*,int ,TYPE_1__*,struct qede_arfs_tuple*) ;

__attribute__((used)) static int qede_flow_spec_to_rule(struct qede_dev *edev,
      struct qede_arfs_tuple *t,
      struct ethtool_rx_flow_spec *fs)
{
 struct ethtool_rx_flow_spec_input input = {};
 struct ethtool_rx_flow_rule *flow;
 __be16 proto;
 int err = 0;

 if (qede_flow_spec_validate_unused(edev, fs))
  return -EOPNOTSUPP;

 switch ((fs->flow_type & ~FLOW_EXT)) {
 case 131:
 case 129:
  proto = htons(ETH_P_IP);
  break;
 case 130:
 case 128:
  proto = htons(ETH_P_IPV6);
  break;
 default:
  DP_VERBOSE(edev, NETIF_MSG_IFUP,
      "Can't support flow of type %08x\n", fs->flow_type);
  return -EOPNOTSUPP;
 }

 input.fs = fs;
 flow = ethtool_rx_flow_rule_create(&input);
 if (IS_ERR(flow))
  return PTR_ERR(flow);

 if (qede_parse_flow_attr(edev, proto, flow->rule, t)) {
  err = -EINVAL;
  goto err_out;
 }


 err = qede_flow_spec_validate(edev, &flow->rule->action, t,
          fs->location);
err_out:
 ethtool_rx_flow_rule_destroy(flow);
 return err;

}
