
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc {scalar_t__ gre_s_present; scalar_t__ gre_k_present; scalar_t__ gre_c_present; scalar_t__ gre_protocol; scalar_t__ gre_key_l; scalar_t__ gre_key_h; } ;



__attribute__((used)) static bool dr_mask_is_gre_set(struct mlx5dr_match_misc *misc)
{
 return (misc->gre_key_h || misc->gre_key_l ||
  misc->gre_protocol || misc->gre_c_present ||
  misc->gre_k_present || misc->gre_s_present);
}
