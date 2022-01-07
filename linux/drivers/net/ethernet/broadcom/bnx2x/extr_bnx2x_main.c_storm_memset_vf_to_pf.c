
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ BAR_USTRORM_INTMEM ;
 scalar_t__ BAR_XSTRORM_INTMEM ;
 scalar_t__ CSTORM_VF_TO_PF_OFFSET (int ) ;
 int REG_WR8 (struct bnx2x*,scalar_t__,int ) ;
 scalar_t__ TSTORM_VF_TO_PF_OFFSET (int ) ;
 scalar_t__ USTORM_VF_TO_PF_OFFSET (int ) ;
 scalar_t__ XSTORM_VF_TO_PF_OFFSET (int ) ;

__attribute__((used)) static void storm_memset_vf_to_pf(struct bnx2x *bp, u16 abs_fid,
      u16 pf_id)
{
 REG_WR8(bp, BAR_XSTRORM_INTMEM + XSTORM_VF_TO_PF_OFFSET(abs_fid),
  pf_id);
 REG_WR8(bp, BAR_CSTRORM_INTMEM + CSTORM_VF_TO_PF_OFFSET(abs_fid),
  pf_id);
 REG_WR8(bp, BAR_TSTRORM_INTMEM + TSTORM_VF_TO_PF_OFFSET(abs_fid),
  pf_id);
 REG_WR8(bp, BAR_USTRORM_INTMEM + USTORM_VF_TO_PF_OFFSET(abs_fid),
  pf_id);
}
