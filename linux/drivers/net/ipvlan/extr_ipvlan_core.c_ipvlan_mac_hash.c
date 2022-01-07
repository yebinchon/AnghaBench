
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int IPVLAN_MAC_FILTER_MASK ;
 int __get_unaligned_cpu32 (unsigned char const*) ;
 int ipvlan_jhash_secret ;
 unsigned int jhash_1word (int ,int ) ;

unsigned int ipvlan_mac_hash(const unsigned char *addr)
{
 u32 hash = jhash_1word(__get_unaligned_cpu32(addr+2),
          ipvlan_jhash_secret);

 return hash & IPVLAN_MAC_FILTER_MASK;
}
