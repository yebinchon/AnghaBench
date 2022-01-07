
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_fid {int fid_index; } ;



__attribute__((used)) static u16 mlxsw_sp_fid_8021q_flood_index(const struct mlxsw_sp_fid *fid)
{
 return fid->fid_index;
}
