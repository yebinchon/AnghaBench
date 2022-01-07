
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {int dummy; } ;


 int ETIMEDOUT ;
 int MACB_BIT (int ) ;
 int MACB_HALT_TIMEOUT ;
 int NCR ;
 int TGO ;
 int THALT ;
 int TSR ;
 unsigned long jiffies ;
 int macb_readl (struct macb*,int ) ;
 int macb_writel (struct macb*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int udelay (int) ;
 unsigned long usecs_to_jiffies (int ) ;

__attribute__((used)) static int macb_halt_tx(struct macb *bp)
{
 unsigned long halt_time, timeout;
 u32 status;

 macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(THALT));

 timeout = jiffies + usecs_to_jiffies(MACB_HALT_TIMEOUT);
 do {
  halt_time = jiffies;
  status = macb_readl(bp, TSR);
  if (!(status & MACB_BIT(TGO)))
   return 0;

  udelay(250);
 } while (time_before(halt_time, timeout));

 return -ETIMEDOUT;
}
