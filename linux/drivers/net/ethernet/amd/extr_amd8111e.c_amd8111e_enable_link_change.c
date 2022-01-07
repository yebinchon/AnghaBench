
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd8111e_priv {scalar_t__ mmio; } ;


 scalar_t__ CMD7 ;
 int LCMODE_SW ;
 int VAL0 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int amd8111e_enable_link_change(struct amd8111e_priv *lp)
{


 writel(VAL0|LCMODE_SW,lp->mmio + CMD7);


 readl(lp->mmio + CMD7);
 return 0;
}
