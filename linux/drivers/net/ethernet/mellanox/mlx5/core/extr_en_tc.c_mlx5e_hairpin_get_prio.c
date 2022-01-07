
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {scalar_t__ trust_state; } ;
struct mlx5e_priv {TYPE_1__ dcbx_dp; } ;
struct mlx5_flow_spec {int match_value; int match_criteria; } ;


 int EOPNOTSUPP ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_GET (int ,void*,int ) ;
 scalar_t__ MLX5_QPTS_TRUST_PCP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int UNKNOWN_MATCH_PRIO ;
 int cvlan_tag ;
 int first_prio ;
 int fte_match_param ;
 int fte_match_set_lyr_2_4 ;
 int outer_headers ;

__attribute__((used)) static int mlx5e_hairpin_get_prio(struct mlx5e_priv *priv,
      struct mlx5_flow_spec *spec, u8 *match_prio,
      struct netlink_ext_ack *extack)
{
 void *headers_c, *headers_v;
 u8 prio_val, prio_mask = 0;
 bool vlan_present;
 headers_c = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, outer_headers);
 headers_v = MLX5_ADDR_OF(fte_match_param, spec->match_value, outer_headers);

 vlan_present = MLX5_GET(fte_match_set_lyr_2_4, headers_v, cvlan_tag);
 if (vlan_present) {
  prio_mask = MLX5_GET(fte_match_set_lyr_2_4, headers_c, first_prio);
  prio_val = MLX5_GET(fte_match_set_lyr_2_4, headers_v, first_prio);
 }

 if (!vlan_present || !prio_mask) {
  prio_val = UNKNOWN_MATCH_PRIO;
 } else if (prio_mask != 0x7) {
  NL_SET_ERR_MSG_MOD(extack,
       "masked priority match not supported for hairpin");
  return -EOPNOTSUPP;
 }

 *match_prio = prio_val;
 return 0;
}
