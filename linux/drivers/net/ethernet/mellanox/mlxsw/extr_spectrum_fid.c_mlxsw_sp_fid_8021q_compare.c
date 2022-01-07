
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {scalar_t__ vid; } ;


 TYPE_1__* mlxsw_sp_fid_8021q_fid (struct mlxsw_sp_fid const*) ;

__attribute__((used)) static bool
mlxsw_sp_fid_8021q_compare(const struct mlxsw_sp_fid *fid, const void *arg)
{
 u16 vid = *(u16 *) arg;

 return mlxsw_sp_fid_8021q_fid(fid)->vid == vid;
}
