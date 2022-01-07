
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static void
qca8k_split_addr(u32 regaddr, u16 *r1, u16 *r2, u16 *page)
{
 regaddr >>= 1;
 *r1 = regaddr & 0x1e;

 regaddr >>= 5;
 *r2 = regaddr & 0x7;

 regaddr >>= 3;
 *page = regaddr & 0x3ff;
}
