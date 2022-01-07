
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in_addr {int s_addr; } ;


 int IPVLAN_HASH_MASK ;
 int ipvlan_jhash_secret ;
 int jhash_1word (int ,int ) ;

__attribute__((used)) static u8 ipvlan_get_v4_hash(const void *iaddr)
{
 const struct in_addr *ip4_addr = iaddr;

 return jhash_1word(ip4_addr->s_addr, ipvlan_jhash_secret) &
        IPVLAN_HASH_MASK;
}
