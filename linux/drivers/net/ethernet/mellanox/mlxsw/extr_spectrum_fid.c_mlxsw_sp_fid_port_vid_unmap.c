
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_fid {TYPE_2__* fid_family; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* port_vid_unmap ) (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int ) ;} ;


 int stub1 (struct mlxsw_sp_fid*,struct mlxsw_sp_port*,int ) ;

void mlxsw_sp_fid_port_vid_unmap(struct mlxsw_sp_fid *fid,
     struct mlxsw_sp_port *mlxsw_sp_port, u16 vid)
{
 fid->fid_family->ops->port_vid_unmap(fid, mlxsw_sp_port, vid);
}
