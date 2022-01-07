
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_misc {int source_port; int source_eswitch_owner_vhca_id; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; } ;


 int DR_STE_SET_MASK (int ,int *,int ,struct mlx5dr_match_misc*,int ) ;
 int EINVAL ;
 int source_gvmi ;
 int source_port ;
 int source_qp ;
 int source_sqn ;
 int src_gvmi_qp ;

__attribute__((used)) static int dr_ste_build_src_gvmi_qpn_bit_mask(struct mlx5dr_match_param *value,
           u8 *bit_mask)
{
 struct mlx5dr_match_misc *misc_mask = &value->misc;


 if (misc_mask->source_port && misc_mask->source_port != 0xffff)
  return -EINVAL;


 if (misc_mask->source_eswitch_owner_vhca_id &&
     misc_mask->source_eswitch_owner_vhca_id != 0xffff)
  return -EINVAL;

 DR_STE_SET_MASK(src_gvmi_qp, bit_mask, source_gvmi, misc_mask, source_port);
 DR_STE_SET_MASK(src_gvmi_qp, bit_mask, source_qp, misc_mask, source_sqn);
 misc_mask->source_eswitch_owner_vhca_id = 0;

 return 0;
}
