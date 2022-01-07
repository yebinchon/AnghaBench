
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int netdev; int mdev; } ;
struct mlx5_flow_spec {int match_value; int match_criteria; } ;
struct flow_rule {int dummy; } ;
struct flow_match_enc_keyid {TYPE_3__* key; TYPE_2__* mask; } ;
struct TYPE_5__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_8__ {int outer_vxlan_vni; } ;
struct TYPE_7__ {int keyid; } ;
struct TYPE_6__ {int keyid; } ;


 int EOPNOTSUPP ;
 int FLOW_DISSECTOR_KEY_ENC_KEYID ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_CAP_ESW_FLOWTABLE_FDB (int ,int ) ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int be32_to_cpu (int ) ;
 struct flow_rule* flow_cls_offload_flow_rule (struct flow_cls_offload*) ;
 int flow_rule_match_enc_keyid (struct flow_rule*,struct flow_match_enc_keyid*) ;
 int flow_rule_match_key (struct flow_rule*,int ) ;
 TYPE_4__ ft_field_support ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int misc_parameters ;
 int netdev_warn (int ,char*) ;
 int vxlan_vni ;

__attribute__((used)) static int mlx5e_tc_tun_parse_vxlan(struct mlx5e_priv *priv,
        struct mlx5_flow_spec *spec,
        struct flow_cls_offload *f,
        void *headers_c,
        void *headers_v)
{
 struct flow_rule *rule = flow_cls_offload_flow_rule(f);
 struct netlink_ext_ack *extack = f->common.extack;
 struct flow_match_enc_keyid enc_keyid;
 void *misc_c, *misc_v;

 misc_c = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, misc_parameters);
 misc_v = MLX5_ADDR_OF(fte_match_param, spec->match_value, misc_parameters);

 if (!flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_KEYID))
  return 0;

 flow_rule_match_enc_keyid(rule, &enc_keyid);

 if (!enc_keyid.mask->keyid)
  return 0;



 if (!MLX5_CAP_ESW_FLOWTABLE_FDB(priv->mdev,
     ft_field_support.outer_vxlan_vni)) {
  NL_SET_ERR_MSG_MOD(extack,
       "Matching on VXLAN VNI is not supported");
  netdev_warn(priv->netdev,
       "Matching on VXLAN VNI is not supported\n");
  return -EOPNOTSUPP;
 }

 MLX5_SET(fte_match_set_misc, misc_c, vxlan_vni,
   be32_to_cpu(enc_keyid.mask->keyid));
 MLX5_SET(fte_match_set_misc, misc_v, vxlan_vni,
   be32_to_cpu(enc_keyid.key->keyid));

 return 0;
}
