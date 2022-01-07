
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_spec {scalar_t__ smac_15_0; scalar_t__ smac_47_16; } ;



__attribute__((used)) static bool dr_mask_is_smac_set(struct mlx5dr_match_spec *spec)
{
 return (spec->smac_47_16 || spec->smac_15_0);
}
