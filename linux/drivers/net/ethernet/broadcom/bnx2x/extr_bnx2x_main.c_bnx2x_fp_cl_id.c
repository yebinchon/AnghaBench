
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bnx2x_fastpath {scalar_t__ index; int bp; } ;


 scalar_t__ BP_L_ID (int ) ;
 scalar_t__ CHIP_IS_E1x (int ) ;
 scalar_t__ bnx2x_fp_igu_sb_id (struct bnx2x_fastpath*) ;

__attribute__((used)) static u8 bnx2x_fp_cl_id(struct bnx2x_fastpath *fp)
{
 if (CHIP_IS_E1x(fp->bp))
  return BP_L_ID(fp->bp) + fp->index;
 else
  return bnx2x_fp_igu_sb_id(fp);
}
