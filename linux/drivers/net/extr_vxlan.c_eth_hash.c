
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int FDB_HASH_BITS ;
 int get_unaligned (int*) ;
 int hash_64 (int,int ) ;

__attribute__((used)) static u32 eth_hash(const unsigned char *addr)
{
 u64 value = get_unaligned((u64 *)addr);





 value <<= 16;

 return hash_64(value, FDB_HASH_BITS);
}
