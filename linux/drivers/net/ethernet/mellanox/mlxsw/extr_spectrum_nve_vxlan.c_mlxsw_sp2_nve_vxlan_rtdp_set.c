
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RTDP_LEN ;
 int MLXSW_REG_RTDP_TYPE_NVE ;
 int mlxsw_reg_rtdp_egress_router_interface_set (char*,int ) ;
 int mlxsw_reg_rtdp_pack (char*,int ,unsigned int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rtdp ;

__attribute__((used)) static int mlxsw_sp2_nve_vxlan_rtdp_set(struct mlxsw_sp *mlxsw_sp,
     unsigned int tunnel_index,
     u16 ul_rif_index)
{
 char rtdp_pl[MLXSW_REG_RTDP_LEN];

 mlxsw_reg_rtdp_pack(rtdp_pl, MLXSW_REG_RTDP_TYPE_NVE, tunnel_index);
 mlxsw_reg_rtdp_egress_router_interface_set(rtdp_pl, ul_rif_index);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rtdp), rtdp_pl);
}
