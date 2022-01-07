
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_rif {TYPE_1__* dev; int vr_id; int rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_ritr_if_type { ____Placeholder_mlxsw_reg_ritr_if_type } mlxsw_reg_ritr_if_type ;
struct TYPE_2__ {int dev_addr; int mtu; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int mlxsw_reg_ritr_fid_set (char*,int,int ) ;
 int mlxsw_reg_ritr_mac_pack (char*,int ) ;
 int mlxsw_reg_ritr_pack (char*,int,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ritr ;

__attribute__((used)) static int mlxsw_sp_rif_vlan_fid_op(struct mlxsw_sp_rif *rif,
        enum mlxsw_reg_ritr_if_type type,
        u16 vid_fid, bool enable)
{
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 char ritr_pl[MLXSW_REG_RITR_LEN];

 mlxsw_reg_ritr_pack(ritr_pl, enable, type, rif->rif_index, rif->vr_id,
       rif->dev->mtu);
 mlxsw_reg_ritr_mac_pack(ritr_pl, rif->dev->dev_addr);
 mlxsw_reg_ritr_fid_set(ritr_pl, type, vid_fid);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
