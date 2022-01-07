
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc2 {int metadata_reg_a; } ;



__attribute__((used)) static bool dr_mask_is_wqe_metadata_set(struct mlx5dr_match_misc2 *misc2)
{
 return misc2->metadata_reg_a;
}
