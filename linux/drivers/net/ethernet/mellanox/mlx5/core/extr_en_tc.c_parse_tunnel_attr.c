
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_15__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {TYPE_13__* netdev; int mdev; } ;
struct mlx5_flow_spec {void* match_criteria; void* match_value; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv6_addrs {TYPE_10__* key; TYPE_8__* mask; } ;
struct flow_match_ipv4_addrs {TYPE_6__* key; TYPE_4__* mask; } ;
struct flow_match_ip {TYPE_12__* mask; TYPE_11__* key; } ;
struct flow_match_control {TYPE_2__* key; } ;
struct TYPE_24__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_32__ {int ipv6; } ;
struct TYPE_31__ {int dst; int src; } ;
struct TYPE_30__ {int ipv6; } ;
struct TYPE_29__ {int dst; int src; } ;
struct TYPE_28__ {int ipv4; } ;
struct TYPE_27__ {int dst; int src; } ;
struct TYPE_26__ {int ipv4; } ;
struct TYPE_25__ {scalar_t__ addr_type; } ;
struct TYPE_23__ {TYPE_9__ ipv6_layout; TYPE_5__ ipv4_layout; } ;
struct TYPE_22__ {int outer_ipv4_ttl; } ;
struct TYPE_21__ {TYPE_7__ ipv6_layout; TYPE_3__ ipv4_layout; } ;
struct TYPE_20__ {int dev_addr; } ;
struct TYPE_19__ {int tos; int ttl; } ;
struct TYPE_18__ {int tos; int ttl; } ;
struct TYPE_17__ {int dst; int src; } ;


 int EOPNOTSUPP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int FLOW_DISSECTOR_KEY_ENC_CONTROL ;
 int FLOW_DISSECTOR_KEY_ENC_IP ;
 scalar_t__ FLOW_DISSECTOR_KEY_IPV4_ADDRS ;
 scalar_t__ FLOW_DISSECTOR_KEY_IPV6_ADDRS ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CAP_ESW_FLOWTABLE_FDB (int ,int ) ;
 int MLX5_FLD_SZ_BYTES (int ,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int dmac_15_0 ;
 int dmac_47_16 ;
 TYPE_16__ dst_ipv4_dst_ipv6 ;
 int ether_addr_copy (void*,int ) ;
 int ethertype ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_enc_control (struct flow_rule*,struct flow_match_control*) ;
 int flow_rule_match_enc_ip (struct flow_rule*,struct flow_match_ip*) ;
 int flow_rule_match_enc_ipv4_addrs (struct flow_rule*,struct flow_match_ipv4_addrs*) ;
 int flow_rule_match_enc_ipv6_addrs (struct flow_rule*,struct flow_match_ipv6_addrs*) ;
 scalar_t__ flow_rule_match_key (struct flow_rule*,int ) ;
 int frag ;
 TYPE_15__ ft_field_support ;
 int fte_match_param ;
 int fte_match_set_lyr_2_4 ;
 int ip_dscp ;
 int ip_ecn ;
 int ipv6 ;
 int ipv6_layout ;
 int memcpy (void*,int *,int ) ;
 int mlx5e_tc_tun_parse (struct net_device*,struct mlx5e_priv*,struct mlx5_flow_spec*,struct flow_cls_offload*,void*,void*,int *) ;
 int ntohl (int ) ;
 int outer_headers ;
 TYPE_14__ src_ipv4_src_ipv6 ;
 int ttl_hoplimit ;

__attribute__((used)) static int parse_tunnel_attr(struct mlx5e_priv *priv,
        struct mlx5_flow_spec *spec,
        struct flow_cls_offload *f,
        struct net_device *filter_dev, u8 *match_level)
{
 struct netlink_ext_ack *extack = f->common.extack;
 void *headers_c = MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
           outer_headers);
 void *headers_v = MLX5_ADDR_OF(fte_match_param, spec->match_value,
           outer_headers);
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 int err;

 err = mlx5e_tc_tun_parse(filter_dev, priv, spec, f,
     headers_c, headers_v, match_level);
 if (err) {
  NL_SET_ERR_MSG_MOD(extack,
       "failed to parse tunnel attributes");
  return err;
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_CONTROL)) {
  struct flow_match_control match;
  u16 addr_type;

  flow_rule_match_enc_control(rule, &match);
  addr_type = match.key->addr_type;


  if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
   struct flow_match_ipv4_addrs match;

   flow_rule_match_enc_ipv4_addrs(rule, &match);
   MLX5_SET(fte_match_set_lyr_2_4, headers_c,
     src_ipv4_src_ipv6.ipv4_layout.ipv4,
     ntohl(match.mask->src));
   MLX5_SET(fte_match_set_lyr_2_4, headers_v,
     src_ipv4_src_ipv6.ipv4_layout.ipv4,
     ntohl(match.key->src));

   MLX5_SET(fte_match_set_lyr_2_4, headers_c,
     dst_ipv4_dst_ipv6.ipv4_layout.ipv4,
     ntohl(match.mask->dst));
   MLX5_SET(fte_match_set_lyr_2_4, headers_v,
     dst_ipv4_dst_ipv6.ipv4_layout.ipv4,
     ntohl(match.key->dst));

   MLX5_SET_TO_ONES(fte_match_set_lyr_2_4, headers_c,
      ethertype);
   MLX5_SET(fte_match_set_lyr_2_4, headers_v, ethertype,
     ETH_P_IP);
  } else if (addr_type == FLOW_DISSECTOR_KEY_IPV6_ADDRS) {
   struct flow_match_ipv6_addrs match;

   flow_rule_match_enc_ipv6_addrs(rule, &match);
   memcpy(MLX5_ADDR_OF(fte_match_set_lyr_2_4, headers_c,
         src_ipv4_src_ipv6.ipv6_layout.ipv6),
          &match.mask->src, MLX5_FLD_SZ_BYTES(ipv6_layout,
           ipv6));
   memcpy(MLX5_ADDR_OF(fte_match_set_lyr_2_4, headers_v,
         src_ipv4_src_ipv6.ipv6_layout.ipv6),
          &match.key->src, MLX5_FLD_SZ_BYTES(ipv6_layout,
          ipv6));

   memcpy(MLX5_ADDR_OF(fte_match_set_lyr_2_4, headers_c,
         dst_ipv4_dst_ipv6.ipv6_layout.ipv6),
          &match.mask->dst, MLX5_FLD_SZ_BYTES(ipv6_layout,
           ipv6));
   memcpy(MLX5_ADDR_OF(fte_match_set_lyr_2_4, headers_v,
         dst_ipv4_dst_ipv6.ipv6_layout.ipv6),
          &match.key->dst, MLX5_FLD_SZ_BYTES(ipv6_layout,
          ipv6));

   MLX5_SET_TO_ONES(fte_match_set_lyr_2_4, headers_c,
      ethertype);
   MLX5_SET(fte_match_set_lyr_2_4, headers_v, ethertype,
     ETH_P_IPV6);
  }
 }

 if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_IP)) {
  struct flow_match_ip match;

  flow_rule_match_enc_ip(rule, &match);
  MLX5_SET(fte_match_set_lyr_2_4, headers_c, ip_ecn,
    match.mask->tos & 0x3);
  MLX5_SET(fte_match_set_lyr_2_4, headers_v, ip_ecn,
    match.key->tos & 0x3);

  MLX5_SET(fte_match_set_lyr_2_4, headers_c, ip_dscp,
    match.mask->tos >> 2);
  MLX5_SET(fte_match_set_lyr_2_4, headers_v, ip_dscp,
    match.key->tos >> 2);

  MLX5_SET(fte_match_set_lyr_2_4, headers_c, ttl_hoplimit,
    match.mask->ttl);
  MLX5_SET(fte_match_set_lyr_2_4, headers_v, ttl_hoplimit,
    match.key->ttl);

  if (match.mask->ttl &&
      !MLX5_CAP_ESW_FLOWTABLE_FDB
   (priv->mdev,
    ft_field_support.outer_ipv4_ttl)) {
   NL_SET_ERR_MSG_MOD(extack,
        "Matching on TTL is not supported");
   return -EOPNOTSUPP;
  }

 }




 MLX5_SET_TO_ONES(fte_match_set_lyr_2_4, headers_c, dmac_47_16);
 MLX5_SET_TO_ONES(fte_match_set_lyr_2_4, headers_c, dmac_15_0);
 ether_addr_copy(MLX5_ADDR_OF(fte_match_set_lyr_2_4, headers_v,
         dmac_47_16), priv->netdev->dev_addr);


 MLX5_SET(fte_match_set_lyr_2_4, headers_c, frag, 1);
 MLX5_SET(fte_match_set_lyr_2_4, headers_v, frag, 0);

 return 0;
}
