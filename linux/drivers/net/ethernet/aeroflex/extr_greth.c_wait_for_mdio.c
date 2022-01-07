
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int mdio; } ;


 int GRETH_MII_BUSY ;
 int GRETH_REGLOAD (int ) ;
 int HZ ;
 int jiffies ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static inline int wait_for_mdio(struct greth_private *greth)
{
 unsigned long timeout = jiffies + 4*HZ/100;
 while (GRETH_REGLOAD(greth->regs->mdio) & GRETH_MII_BUSY) {
  if (time_after(jiffies, timeout))
   return 0;
 }
 return 1;
}
