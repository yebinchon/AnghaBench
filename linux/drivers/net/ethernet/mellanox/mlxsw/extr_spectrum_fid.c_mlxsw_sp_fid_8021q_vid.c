
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int vid; } ;


 TYPE_1__* mlxsw_sp_fid_8021q_fid (struct mlxsw_sp_fid const*) ;

u16 mlxsw_sp_fid_8021q_vid(const struct mlxsw_sp_fid *fid)
{
 return mlxsw_sp_fid_8021q_fid(fid)->vid;
}
