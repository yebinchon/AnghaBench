
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int * fp; } ;


 scalar_t__ IS_PF (struct bnx2x*) ;
 int bnx2x_setup_queue (struct bnx2x*,int *,int) ;
 int bnx2x_vfpf_setup_q (struct bnx2x*,int *,int) ;

int bnx2x_setup_leading(struct bnx2x *bp)
{
 if (IS_PF(bp))
  return bnx2x_setup_queue(bp, &bp->fp[0], 1);
 else
  return bnx2x_vfpf_setup_q(bp, &bp->fp[0], 1);
}
