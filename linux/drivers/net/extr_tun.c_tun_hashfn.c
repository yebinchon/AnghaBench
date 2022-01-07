
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TUN_MASK_FLOW_ENTRIES ;

__attribute__((used)) static inline u32 tun_hashfn(u32 rxhash)
{
 return rxhash & TUN_MASK_FLOW_ENTRIES;
}
