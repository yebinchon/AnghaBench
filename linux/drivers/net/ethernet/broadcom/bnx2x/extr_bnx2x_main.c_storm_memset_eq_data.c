
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct event_ring_data {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ CSTORM_EVENT_RING_DATA_OFFSET (int ) ;
 int __storm_memset_struct (struct bnx2x*,scalar_t__,size_t,scalar_t__*) ;

__attribute__((used)) static void storm_memset_eq_data(struct bnx2x *bp,
     struct event_ring_data *eq_data,
    u16 pfid)
{
 size_t size = sizeof(struct event_ring_data);

 u32 addr = BAR_CSTRORM_INTMEM + CSTORM_EVENT_RING_DATA_OFFSET(pfid);

 __storm_memset_struct(bp, addr, size, (u32 *)eq_data);
}
