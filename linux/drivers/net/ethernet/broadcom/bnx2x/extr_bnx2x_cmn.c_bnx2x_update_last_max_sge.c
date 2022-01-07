
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_fastpath {int last_max_sge; } ;


 scalar_t__ SUB_S16 (int ,int ) ;

__attribute__((used)) static inline void bnx2x_update_last_max_sge(struct bnx2x_fastpath *fp,
          u16 idx)
{
 u16 last_max = fp->last_max_sge;

 if (SUB_S16(idx, last_max) > 0)
  fp->last_max_sge = idx;
}
