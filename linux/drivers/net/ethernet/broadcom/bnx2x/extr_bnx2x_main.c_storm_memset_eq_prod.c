
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_EVENT_RING_PROD_OFFSET (int ) ;
 int REG_WR16 (struct bnx2x*,scalar_t__,int ) ;

__attribute__((used)) static void storm_memset_eq_prod(struct bnx2x *bp, u16 eq_prod,
     u16 pfid)
{
 u32 addr = BAR_CSTRORM_INTMEM + CSTORM_EVENT_RING_PROD_OFFSET(pfid);
 REG_WR16(bp, addr, eq_prod);
}
