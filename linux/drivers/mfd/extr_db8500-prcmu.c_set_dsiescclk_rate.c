
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
 int clock_divider (int ,unsigned long) ;
 int clock_rate (int ) ;
 TYPE_1__* dsiescclk ;
 int min (int,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void set_dsiescclk_rate(u8 n, unsigned long rate)
{
 u32 val;
 u32 div;

 div = clock_divider(clock_rate(PRCMU_TVCLK), rate);
 val = readl(PRCM_DSITVCLK_DIV);
 val &= ~dsiescclk[n].div_mask;
 val |= (min(div, (u32)255) << dsiescclk[n].div_shift);
 writel(val, PRCM_DSITVCLK_DIV);
}
