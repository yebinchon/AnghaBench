
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int dummy; } ;


 int MLXSW_REG_SPVM_REC_MAX_COUNT ;
 int __mlxsw_sp_port_vlan_set (struct mlxsw_sp_port*,int,int,int,int) ;
 int min (int,int) ;

int mlxsw_sp_port_vlan_set(struct mlxsw_sp_port *mlxsw_sp_port, u16 vid_begin,
      u16 vid_end, bool is_member, bool untagged)
{
 u16 vid, vid_e;
 int err;

 for (vid = vid_begin; vid <= vid_end;
      vid += MLXSW_REG_SPVM_REC_MAX_COUNT) {
  vid_e = min((u16) (vid + MLXSW_REG_SPVM_REC_MAX_COUNT - 1),
       vid_end);

  err = __mlxsw_sp_port_vlan_set(mlxsw_sp_port, vid, vid_e,
            is_member, untagged);
  if (err)
   return err;
 }

 return 0;
}
