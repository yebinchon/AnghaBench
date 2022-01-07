
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mid {int in_hw; int mid; int fid; int addr; } ;
struct mlxsw_sp {TYPE_1__* bridge; } ;
struct TYPE_2__ {int mids_bitmap; } ;


 int clear_bit (int ,int ) ;
 int mlxsw_sp_port_mdb_op (struct mlxsw_sp*,int ,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_mc_remove_mdb_entry(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_mid *mid)
{
 if (!mid->in_hw)
  return 0;

 clear_bit(mid->mid, mlxsw_sp->bridge->mids_bitmap);
 mid->in_hw = 0;
 return mlxsw_sp_port_mdb_op(mlxsw_sp, mid->addr, mid->fid, mid->mid,
        0);
}
