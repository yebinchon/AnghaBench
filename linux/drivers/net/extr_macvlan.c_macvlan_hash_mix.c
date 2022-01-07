
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macvlan_dev {int dummy; } ;


 unsigned long L1_CACHE_SHIFT ;

__attribute__((used)) static u32 macvlan_hash_mix(const struct macvlan_dev *vlan)
{
 return (u32)(((unsigned long)vlan) >> L1_CACHE_SHIFT);
}
