
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef void* u32 ;
struct genwqe_reg {int val; void* idx; void* addr; } ;
struct genwqe_dev {int dummy; } ;


 int EFAULT ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static int set_reg_idx(struct genwqe_dev *cd, struct genwqe_reg *r,
         unsigned int *i, unsigned int m, u32 addr, u32 idx,
         u64 val)
{
 if (WARN_ON_ONCE(*i >= m))
  return -EFAULT;

 r[*i].addr = addr;
 r[*i].idx = idx;
 r[*i].val = val;
 ++*i;
 return 0;
}
