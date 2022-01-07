
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {int en; } ;


 int PRCM_DSITVCLK_DIV ;
 TYPE_1__* dsiescclk ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int request_dsiescclk(u8 n, bool enable)
{
 u32 val;

 val = readl(PRCM_DSITVCLK_DIV);
 enable ? (val |= dsiescclk[n].en) : (val &= ~dsiescclk[n].en);
 writel(val, PRCM_DSITVCLK_DIV);
 return 0;
}
