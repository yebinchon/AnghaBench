
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_mid {int in_hw; struct mlxsw_sp_mid* ports_in_mid; int list; int fid; int addr; } ;
struct mlxsw_sp_bridge_device {int mids_list; int multicast_enabled; } ;
struct mlxsw_sp {int core; } ;


 int BITS_TO_LONGS (int ) ;
 int GFP_KERNEL ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int kfree (struct mlxsw_sp_mid*) ;
 void* kzalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 int mlxsw_core_max_ports (int ) ;
 int mlxsw_sp_mc_write_mdb_entry (struct mlxsw_sp*,struct mlxsw_sp_mid*,struct mlxsw_sp_bridge_device*) ;

__attribute__((used)) static struct
mlxsw_sp_mid *__mlxsw_sp_mc_alloc(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_bridge_device *bridge_device,
      const unsigned char *addr,
      u16 fid)
{
 struct mlxsw_sp_mid *mid;
 size_t alloc_size;

 mid = kzalloc(sizeof(*mid), GFP_KERNEL);
 if (!mid)
  return ((void*)0);

 alloc_size = sizeof(unsigned long) *
       BITS_TO_LONGS(mlxsw_core_max_ports(mlxsw_sp->core));

 mid->ports_in_mid = kzalloc(alloc_size, GFP_KERNEL);
 if (!mid->ports_in_mid)
  goto err_ports_in_mid_alloc;

 ether_addr_copy(mid->addr, addr);
 mid->fid = fid;
 mid->in_hw = 0;

 if (!bridge_device->multicast_enabled)
  goto out;

 if (!mlxsw_sp_mc_write_mdb_entry(mlxsw_sp, mid, bridge_device))
  goto err_write_mdb_entry;

out:
 list_add_tail(&mid->list, &bridge_device->mids_list);
 return mid;

err_write_mdb_entry:
 kfree(mid->ports_in_mid);
err_ports_in_mid_alloc:
 kfree(mid);
 return ((void*)0);
}
