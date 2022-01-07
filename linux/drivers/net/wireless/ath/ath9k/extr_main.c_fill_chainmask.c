
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;

__attribute__((used)) static u32 fill_chainmask(u32 cap, u32 new)
{
 u32 filled = 0;
 int i;

 for (i = 0; cap && new; i++, cap >>= 1) {
  if (!(cap & BIT(0)))
   continue;

  if (new & BIT(0))
   filled |= BIT(i);

  new >>= 1;
 }

 return filled;
}
