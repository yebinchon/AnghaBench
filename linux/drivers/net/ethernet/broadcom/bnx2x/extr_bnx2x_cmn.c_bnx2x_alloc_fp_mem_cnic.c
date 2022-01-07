
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int ENOMEM ;
 int FCOE_IDX (struct bnx2x*) ;
 int NO_FCOE (struct bnx2x*) ;
 scalar_t__ bnx2x_alloc_fp_mem_at (struct bnx2x*,int ) ;

__attribute__((used)) static int bnx2x_alloc_fp_mem_cnic(struct bnx2x *bp)
{
 if (!NO_FCOE(bp))

  if (bnx2x_alloc_fp_mem_at(bp, FCOE_IDX(bp)))



   return -ENOMEM;

 return 0;
}
