
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int netdev; TYPE_2__* mdev; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_3__* key; } ;
struct TYPE_4__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_6__ {int dst; } ;
struct TYPE_5__ {int vxlan; } ;


 int EOPNOTSUPP ;
 int FLOW_DISSECTOR_KEY_ENC_PORTS ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int be16_to_cpu (int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_enc_ports (struct flow_rule*,struct flow_match_ports*) ;
 int flow_rule_match_key (struct flow_rule*,int ) ;
 int mlx5_vxlan_lookup_port (int ,int ) ;
 int netdev_warn (int ,char*,int ) ;

__attribute__((used)) static int mlx5e_tc_tun_check_udp_dport_vxlan(struct mlx5e_priv *priv,
           struct flow_cls_offload *f)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct netlink_ext_ack *extack = f->common.extack;
 struct flow_match_ports enc_ports;

 if (!flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS))
  return -EOPNOTSUPP;

 flow_rule_match_enc_ports(rule, &enc_ports);



 if (!mlx5_vxlan_lookup_port(priv->mdev->vxlan,
        be16_to_cpu(enc_ports.key->dst))) {
  NL_SET_ERR_MSG_MOD(extack,
       "Matched UDP dst port is not registered as a VXLAN port");
  netdev_warn(priv->netdev,
       "UDP port %d is not registered as a VXLAN port\n",
       be16_to_cpu(enc_ports.key->dst));
  return -EOPNOTSUPP;
 }

 return 0;
}
