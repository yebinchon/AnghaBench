
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int FDB_HASH_SIZE ;
 int get_unaligned (int*) ;
 int jhash_2words (int,int ,int ) ;
 int vxlan_salt ;

__attribute__((used)) static u32 eth_vni_hash(const unsigned char *addr, __be32 vni)
{

 u32 key = get_unaligned((u32 *)(addr + 2));

 return jhash_2words(key, vni, vxlan_salt) & (FDB_HASH_SIZE - 1);
}
