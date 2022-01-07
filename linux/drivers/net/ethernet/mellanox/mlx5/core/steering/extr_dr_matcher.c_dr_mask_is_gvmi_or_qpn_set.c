
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc {scalar_t__ source_port; scalar_t__ source_sqn; } ;



__attribute__((used)) static bool dr_mask_is_gvmi_or_qpn_set(struct mlx5dr_match_misc *misc)
{
 return (misc->source_sqn || misc->source_port);
}
