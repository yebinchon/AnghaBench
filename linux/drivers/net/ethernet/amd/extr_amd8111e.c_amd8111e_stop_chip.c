
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd8111e_priv {scalar_t__ mmio; } ;


 scalar_t__ CMD0 ;
 int RUN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void amd8111e_stop_chip(struct amd8111e_priv *lp)
{
 writel(RUN, lp->mmio + CMD0);


 readl(lp->mmio + CMD0);
}
