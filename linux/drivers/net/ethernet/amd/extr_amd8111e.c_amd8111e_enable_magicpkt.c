
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd8111e_priv {scalar_t__ mmio; } ;


 scalar_t__ CMD3 ;
 scalar_t__ CMD7 ;
 int MPEN_SW ;
 int MPPLBA ;
 int VAL0 ;
 int VAL1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int amd8111e_enable_magicpkt(struct amd8111e_priv *lp)
{
 writel( VAL1|MPPLBA, lp->mmio + CMD3);
 writel( VAL0|MPEN_SW, lp->mmio + CMD7);


 readl(lp->mmio + CMD7);
 return 0;
}
