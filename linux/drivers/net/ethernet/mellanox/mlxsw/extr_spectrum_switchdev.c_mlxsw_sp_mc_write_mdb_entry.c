
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlxsw_sp_mid {int in_hw; int fid; int addr; scalar_t__ mid; int ports_in_mid; } ;
struct mlxsw_sp_bridge_device {int mrouter; } ;
struct mlxsw_sp {TYPE_1__* bridge; int core; } ;
struct TYPE_2__ {int mids_bitmap; } ;


 int BITS_TO_LONGS (int) ;
 int GFP_KERNEL ;
 scalar_t__ MLXSW_SP_MID_MAX ;
 int bitmap_copy (long*,int ,int) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int kfree (long*) ;
 long* kzalloc (int,int ) ;
 int mlxsw_core_max_ports (int ) ;
 int mlxsw_sp_mc_get_mrouters_bitmap (long*,struct mlxsw_sp_bridge_device*,struct mlxsw_sp*) ;
 int mlxsw_sp_port_mdb_op (struct mlxsw_sp*,int ,int ,scalar_t__,int) ;
 int mlxsw_sp_port_smid_full_entry (struct mlxsw_sp*,scalar_t__,long*,int ) ;
 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static bool
mlxsw_sp_mc_write_mdb_entry(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_mid *mid,
       struct mlxsw_sp_bridge_device *bridge_device)
{
 long *flood_bitmap;
 int num_of_ports;
 int alloc_size;
 u16 mid_idx;
 int err;

 mid_idx = find_first_zero_bit(mlxsw_sp->bridge->mids_bitmap,
          MLXSW_SP_MID_MAX);
 if (mid_idx == MLXSW_SP_MID_MAX)
  return 0;

 num_of_ports = mlxsw_core_max_ports(mlxsw_sp->core);
 alloc_size = sizeof(long) * BITS_TO_LONGS(num_of_ports);
 flood_bitmap = kzalloc(alloc_size, GFP_KERNEL);
 if (!flood_bitmap)
  return 0;

 bitmap_copy(flood_bitmap, mid->ports_in_mid, num_of_ports);
 mlxsw_sp_mc_get_mrouters_bitmap(flood_bitmap, bridge_device, mlxsw_sp);

 mid->mid = mid_idx;
 err = mlxsw_sp_port_smid_full_entry(mlxsw_sp, mid_idx, flood_bitmap,
         bridge_device->mrouter);
 kfree(flood_bitmap);
 if (err)
  return 0;

 err = mlxsw_sp_port_mdb_op(mlxsw_sp, mid->addr, mid->fid, mid_idx,
       1);
 if (err)
  return 0;

 set_bit(mid_idx, mlxsw_sp->bridge->mids_bitmap);
 mid->in_hw = 1;
 return 1;
}
