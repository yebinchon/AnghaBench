
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int mdev; int netdev; } ;
struct mlx5_flow_spec {int match_value; int match_criteria; } ;
struct TYPE_3__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_4__ {int outer_geneve_protocol_type; int outer_geneve_oam; } ;


 int EOPNOTSUPP ;
 int ETH_P_TEB ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 scalar_t__ MLX5_CAP_ESW_FLOWTABLE_FDB (int ,int ) ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 TYPE_2__ ft_field_support ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int geneve_oam ;
 int geneve_protocol_type ;
 int misc_parameters ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static int mlx5e_tc_tun_parse_geneve_params(struct mlx5e_priv *priv,
         struct mlx5_flow_spec *spec,
         struct flow_cls_offload *f)
{
 void *misc_c = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, misc_parameters);
 void *misc_v = MLX5_ADDR_OF(fte_match_param, spec->match_value, misc_parameters);
 struct netlink_ext_ack *extack = f->common.extack;



 if (!MLX5_CAP_ESW_FLOWTABLE_FDB(priv->mdev, ft_field_support.outer_geneve_oam)) {
  NL_SET_ERR_MSG_MOD(extack, "Matching on GENEVE OAM is not supported");
  netdev_warn(priv->netdev, "Matching on GENEVE OAM is not supported\n");
  return -EOPNOTSUPP;
 }
 MLX5_SET_TO_ONES(fte_match_set_misc, misc_c, geneve_oam);
 MLX5_SET(fte_match_set_misc, misc_v, geneve_oam, 0);



 if (MLX5_CAP_ESW_FLOWTABLE_FDB(priv->mdev,
           ft_field_support.outer_geneve_protocol_type)) {
  MLX5_SET_TO_ONES(fte_match_set_misc, misc_c, geneve_protocol_type);
  MLX5_SET(fte_match_set_misc, misc_v, geneve_protocol_type, ETH_P_TEB);
 }

 return 0;
}
