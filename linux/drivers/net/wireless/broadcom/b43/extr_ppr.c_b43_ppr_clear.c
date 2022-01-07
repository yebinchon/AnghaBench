
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;
struct b43_ppr {int dummy; } ;


 int B43_PPR_RATES_NUM ;
 int BUILD_BUG_ON (int) ;
 int memset (struct b43_ppr*,int ,int) ;

void b43_ppr_clear(struct b43_wldev *dev, struct b43_ppr *ppr)
{
 memset(ppr, 0, sizeof(*ppr));


 BUILD_BUG_ON(sizeof(struct b43_ppr) != B43_PPR_RATES_NUM * sizeof(u8));
}
