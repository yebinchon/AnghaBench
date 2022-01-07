
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_VF_PF_CHANNEL_VALID_OFFSET (int ) ;
 int REG_WR8 (struct bnx2x*,scalar_t__,int) ;

__attribute__((used)) static void storm_memset_vf_mbx_valid(struct bnx2x *bp, u16 abs_fid)
{
 u32 addr = BAR_CSTRORM_INTMEM +
     CSTORM_VF_PF_CHANNEL_VALID_OFFSET(abs_fid);

 REG_WR8(bp, addr, 1);
}
