
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flex_protocols; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {TYPE_2__ info; } ;


 int MLX5_FLEX_PARSER_VXLAN_GPE_ENABLED ;

__attribute__((used)) static bool
dr_matcher_supp_flex_parser_vxlan_gpe(struct mlx5dr_domain *dmn)
{
 return dmn->info.caps.flex_protocols &
        MLX5_FLEX_PARSER_VXLAN_GPE_ENABLED;
}
