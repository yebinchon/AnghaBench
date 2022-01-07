
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct mlxsw_sp_port {size_t local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_fid {int fid_index; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_2__ {scalar_t__* port_fid_mappings; } ;


 int __mlxsw_sp_fid_port_vid_map (struct mlxsw_sp*,int ,size_t,int ,int) ;

__attribute__((used)) static void
mlxsw_sp_fid_8021q_port_vid_unmap(struct mlxsw_sp_fid *fid,
      struct mlxsw_sp_port *mlxsw_sp_port, u16 vid)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 u8 local_port = mlxsw_sp_port->local_port;

 if (mlxsw_sp->fid_core->port_fid_mappings[local_port] == 0)
  return;
 __mlxsw_sp_fid_port_vid_map(mlxsw_sp, fid->fid_index, local_port, vid,
        0);
}
