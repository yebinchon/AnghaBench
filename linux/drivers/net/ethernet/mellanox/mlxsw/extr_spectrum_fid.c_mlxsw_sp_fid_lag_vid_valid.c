
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {TYPE_1__* fid_family; } ;
struct TYPE_2__ {int lag_vid_valid; } ;



bool mlxsw_sp_fid_lag_vid_valid(const struct mlxsw_sp_fid *fid)
{
 return fid->fid_family->lag_vid_valid;
}
