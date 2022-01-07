
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static int empty_addr(u8 *addr)
{
 u32 *addr1 = (u32 *) addr;
 u16 *addr2 = (u16 *) &addr[4];

 return 0 == *addr1 && 0 == *addr2;
}
