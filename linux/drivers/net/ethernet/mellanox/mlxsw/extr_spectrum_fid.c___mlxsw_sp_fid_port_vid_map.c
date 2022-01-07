
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_svfa_mt { ____Placeholder_mlxsw_reg_svfa_mt } mlxsw_reg_svfa_mt ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SVFA_LEN ;
 int MLXSW_REG_SVFA_MT_PORT_VID_TO_FID ;
 int mlxsw_reg_svfa_pack (char*,int ,int,int,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int svfa ;

__attribute__((used)) static int __mlxsw_sp_fid_port_vid_map(struct mlxsw_sp *mlxsw_sp, u16 fid_index,
           u8 local_port, u16 vid, bool valid)
{
 enum mlxsw_reg_svfa_mt mt = MLXSW_REG_SVFA_MT_PORT_VID_TO_FID;
 char svfa_pl[MLXSW_REG_SVFA_LEN];

 mlxsw_reg_svfa_pack(svfa_pl, local_port, mt, valid, fid_index, vid);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(svfa), svfa_pl);
}
