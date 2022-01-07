
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ANT_A ;
 int BIT (scalar_t__) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ ffs (int ) ;

u8 first_antenna(u8 mask)
{
 BUILD_BUG_ON(ANT_A != BIT(0));
 if (WARN_ON_ONCE(!mask))
  return BIT(0);
 return BIT(ffs(mask) - 1);
}
