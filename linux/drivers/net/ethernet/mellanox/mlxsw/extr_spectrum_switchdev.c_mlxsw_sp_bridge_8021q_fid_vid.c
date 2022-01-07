
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;


 int mlxsw_sp_fid_8021q_vid (struct mlxsw_sp_fid const*) ;

__attribute__((used)) static u16
mlxsw_sp_bridge_8021q_fid_vid(struct mlxsw_sp_bridge_device *bridge_device,
         const struct mlxsw_sp_fid *fid)
{
 return mlxsw_sp_fid_8021q_vid(fid);
}
