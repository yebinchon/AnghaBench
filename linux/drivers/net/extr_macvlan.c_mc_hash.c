
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macvlan_dev {int dummy; } ;


 int MACVLAN_MC_FILTER_BITS ;
 int __get_unaligned_cpu32 (unsigned char const*) ;
 unsigned int hash_32 (int ,int ) ;
 int macvlan_hash_mix (struct macvlan_dev const*) ;

__attribute__((used)) static unsigned int mc_hash(const struct macvlan_dev *vlan,
       const unsigned char *addr)
{
 u32 val = __get_unaligned_cpu32(addr + 2);

 val ^= macvlan_hash_mix(vlan);
 return hash_32(val, MACVLAN_MC_FILTER_BITS);
}
