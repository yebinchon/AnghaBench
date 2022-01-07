
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp_fid {TYPE_1__* fid_family; } ;
struct TYPE_2__ {int start_index; } ;



__attribute__((used)) static int mlxsw_sp_fid_dummy_index_alloc(struct mlxsw_sp_fid *fid,
       const void *arg, u16 *p_fid_index)
{
 *p_fid_index = fid->fid_family->start_index;

 return 0;
}
