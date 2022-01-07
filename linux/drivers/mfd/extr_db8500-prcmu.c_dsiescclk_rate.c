
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int div_mask; int div_shift; } ;


 int PRCMU_TVCLK ;
 int PRCM_DSITVCLK_DIV ;
 unsigned long clock_rate (int ) ;
 TYPE_1__* dsiescclk ;
 unsigned long max (int,int) ;
 int readl (int ) ;

__attribute__((used)) static unsigned long dsiescclk_rate(u8 n)
{
 u32 div;

 div = readl(PRCM_DSITVCLK_DIV);
 div = ((div & dsiescclk[n].div_mask) >> (dsiescclk[n].div_shift));
 return clock_rate(PRCMU_TVCLK) / max((u32)1, div);
}
