
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int br_ifindex; } ;


 TYPE_1__* mlxsw_sp_fid_8021d_fid (struct mlxsw_sp_fid const*) ;

__attribute__((used)) static bool
mlxsw_sp_fid_8021d_compare(const struct mlxsw_sp_fid *fid, const void *arg)
{
 int br_ifindex = *(int *) arg;

 return mlxsw_sp_fid_8021d_fid(fid)->br_ifindex == br_ifindex;
}
