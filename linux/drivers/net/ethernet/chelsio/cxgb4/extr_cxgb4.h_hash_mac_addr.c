
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline int hash_mac_addr(const u8 *addr)
{
 u32 a = ((u32)addr[0] << 16) | ((u32)addr[1] << 8) | addr[2];
 u32 b = ((u32)addr[3] << 16) | ((u32)addr[4] << 8) | addr[5];

 a ^= b;
 a ^= (a >> 12);
 a ^= (a >> 6);
 return a & 0x3f;
}
