
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int vid; } ;


 TYPE_1__* mlxsw_sp_fid_8021q_fid (struct mlxsw_sp_fid*) ;

__attribute__((used)) static void mlxsw_sp_fid_8021q_setup(struct mlxsw_sp_fid *fid, const void *arg)
{
 u16 vid = *(u16 *) arg;

 mlxsw_sp_fid_8021q_fid(fid)->vid = vid;
}
