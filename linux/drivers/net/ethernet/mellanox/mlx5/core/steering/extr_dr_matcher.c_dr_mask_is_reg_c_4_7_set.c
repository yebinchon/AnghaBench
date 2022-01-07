
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc2 {scalar_t__ metadata_reg_c_7; scalar_t__ metadata_reg_c_6; scalar_t__ metadata_reg_c_5; scalar_t__ metadata_reg_c_4; } ;



__attribute__((used)) static bool dr_mask_is_reg_c_4_7_set(struct mlx5dr_match_misc2 *misc2)
{
 return (misc2->metadata_reg_c_4 || misc2->metadata_reg_c_5 ||
  misc2->metadata_reg_c_6 || misc2->metadata_reg_c_7);
}
