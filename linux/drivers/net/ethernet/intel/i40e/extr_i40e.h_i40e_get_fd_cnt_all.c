
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdir_shared_filter_count; } ;
struct i40e_pf {int fdir_pf_filter_count; TYPE_1__ hw; } ;



__attribute__((used)) static inline int i40e_get_fd_cnt_all(struct i40e_pf *pf)
{
 return pf->hw.fdir_shared_filter_count + pf->fdir_pf_filter_count;
}
