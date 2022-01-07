
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* nve; } ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ inc_parsing_depth_refs; } ;


 int MLXSW_SP_NVE_DEFAULT_PARSING_DEPTH ;
 int MLXSW_SP_NVE_VXLAN_PARSING_DEPTH ;
 int __mlxsw_sp_nve_parsing_set (struct mlxsw_sp*,int,int ) ;

__attribute__((used)) static int mlxsw_sp_nve_parsing_set(struct mlxsw_sp *mlxsw_sp,
        __be16 udp_dport)
{
 int parsing_depth = mlxsw_sp->nve->inc_parsing_depth_refs ?
    MLXSW_SP_NVE_VXLAN_PARSING_DEPTH :
    MLXSW_SP_NVE_DEFAULT_PARSING_DEPTH;

 return __mlxsw_sp_nve_parsing_set(mlxsw_sp, parsing_depth, udp_dport);
}
