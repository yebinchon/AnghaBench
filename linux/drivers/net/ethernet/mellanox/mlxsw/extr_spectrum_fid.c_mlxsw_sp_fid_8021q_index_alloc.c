
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_fid_family {scalar_t__ start_index; scalar_t__ end_index; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; } ;


 int EINVAL ;

__attribute__((used)) static int mlxsw_sp_fid_8021q_index_alloc(struct mlxsw_sp_fid *fid,
       const void *arg, u16 *p_fid_index)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 u16 vid = *(u16 *) arg;


 if (vid < fid_family->start_index || vid > fid_family->end_index)
  return -EINVAL;
 *p_fid_index = vid;

 return 0;
}
