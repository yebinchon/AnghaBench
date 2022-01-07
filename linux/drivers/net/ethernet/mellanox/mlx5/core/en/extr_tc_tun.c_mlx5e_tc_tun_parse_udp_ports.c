
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int netdev; } ;
struct mlx5_flow_spec {int dummy; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_3__* key; TYPE_2__* mask; } ;
struct TYPE_4__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_6__ {int src; int dst; } ;
struct TYPE_5__ {int src; int dst; } ;


 int EOPNOTSUPP ;
 int FLOW_DISSECTOR_KEY_ENC_PORTS ;
 int IPPROTO_UDP ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_enc_ports (struct flow_rule*,struct flow_match_ports*) ;
 int flow_rule_match_key (struct flow_rule*,int ) ;
 int fte_match_set_lyr_2_4 ;
 int ip_protocol ;
 scalar_t__ memchr_inv (int *,int,int) ;
 int netdev_warn (int ,char*) ;
 int ntohs (int ) ;
 int udp_dport ;
 int udp_sport ;

int mlx5e_tc_tun_parse_udp_ports(struct mlx5e_priv *priv,
     struct mlx5_flow_spec *spec,
     struct flow_cls_offload *f,
     void *headers_c,
     void *headers_v)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct netlink_ext_ack *extack = f->common.extack;
 struct flow_match_ports enc_ports;



 if (!flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_PORTS)) {
  NL_SET_ERR_MSG_MOD(extack,
       "UDP tunnel decap filter must include enc_dst_port condition");
  netdev_warn(priv->netdev,
       "UDP tunnel decap filter must include enc_dst_port condition\n");
  return -EOPNOTSUPP;
 }

 flow_rule_match_enc_ports(rule, &enc_ports);

 if (memchr_inv(&enc_ports.mask->dst, 0xff,
         sizeof(enc_ports.mask->dst))) {
  NL_SET_ERR_MSG_MOD(extack,
       "UDP tunnel decap filter must match enc_dst_port fully");
  netdev_warn(priv->netdev,
       "UDP tunnel decap filter must match enc_dst_port fully\n");
  return -EOPNOTSUPP;
 }



 MLX5_SET_TO_ONES(fte_match_set_lyr_2_4, headers_c, ip_protocol);
 MLX5_SET(fte_match_set_lyr_2_4, headers_v, ip_protocol, IPPROTO_UDP);

 MLX5_SET(fte_match_set_lyr_2_4, headers_c, udp_dport,
   ntohs(enc_ports.mask->dst));
 MLX5_SET(fte_match_set_lyr_2_4, headers_v, udp_dport,
   ntohs(enc_ports.key->dst));






 MLX5_SET(fte_match_set_lyr_2_4, headers_c, udp_sport,
   ntohs(enc_ports.mask->src));
 MLX5_SET(fte_match_set_lyr_2_4, headers_v, udp_sport,
   ntohs(enc_ports.key->src));

 return 0;
}
