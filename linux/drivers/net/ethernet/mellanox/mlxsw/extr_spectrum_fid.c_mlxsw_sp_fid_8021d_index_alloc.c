
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_fid_family {scalar_t__ end_index; scalar_t__ start_index; int fids_bitmap; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; } ;


 int ENOBUFS ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;

__attribute__((used)) static int mlxsw_sp_fid_8021d_index_alloc(struct mlxsw_sp_fid *fid,
       const void *arg, u16 *p_fid_index)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 u16 nr_fids, fid_index;

 nr_fids = fid_family->end_index - fid_family->start_index + 1;
 fid_index = find_first_zero_bit(fid_family->fids_bitmap, nr_fids);
 if (fid_index == nr_fids)
  return -ENOBUFS;
 *p_fid_index = fid_family->start_index + fid_index;

 return 0;
}
