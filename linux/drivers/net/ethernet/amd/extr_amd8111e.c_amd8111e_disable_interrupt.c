
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amd8111e_priv {scalar_t__ mmio; } ;


 scalar_t__ CMD0 ;
 scalar_t__ INT0 ;
 int INTREN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void amd8111e_disable_interrupt(struct amd8111e_priv *lp)
{
 u32 intr0;


 writel(INTREN, lp->mmio + CMD0);


 intr0 = readl(lp->mmio + INT0);
 writel(intr0, lp->mmio + INT0);


 readl(lp->mmio + INT0);

}
