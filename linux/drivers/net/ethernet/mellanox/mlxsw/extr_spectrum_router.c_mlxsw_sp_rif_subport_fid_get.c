
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_rif {int rif_index; int mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;


 struct mlxsw_sp_fid* mlxsw_sp_fid_rfid_get (int ,int ) ;

__attribute__((used)) static struct mlxsw_sp_fid *
mlxsw_sp_rif_subport_fid_get(struct mlxsw_sp_rif *rif,
        struct netlink_ext_ack *extack)
{
 return mlxsw_sp_fid_rfid_get(rif->mlxsw_sp, rif->rif_index);
}
