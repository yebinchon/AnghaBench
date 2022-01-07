
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid_8021q {int vid; } ;
struct mlxsw_sp_fid {int fid_index; TYPE_1__* fid_family; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp* mlxsw_sp; } ;


 struct mlxsw_sp_fid_8021q* mlxsw_sp_fid_8021q_fid (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_fid_op (struct mlxsw_sp*,int ,int ,int) ;
 int mlxsw_sp_fid_vid_map (struct mlxsw_sp*,int ,int ,int) ;

__attribute__((used)) static void mlxsw_sp_fid_8021q_deconfigure(struct mlxsw_sp_fid *fid)
{
 struct mlxsw_sp *mlxsw_sp = fid->fid_family->mlxsw_sp;
 struct mlxsw_sp_fid_8021q *fid_8021q;

 fid_8021q = mlxsw_sp_fid_8021q_fid(fid);
 mlxsw_sp_fid_vid_map(mlxsw_sp, fid->fid_index, fid_8021q->vid, 0);
 mlxsw_sp_fid_op(mlxsw_sp, fid->fid_index, 0, 0);
}
