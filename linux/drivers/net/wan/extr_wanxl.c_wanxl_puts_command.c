
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct card {scalar_t__ plx; } ;


 int HZ ;
 scalar_t__ PLX_MAILBOX_1 ;
 int jiffies ;
 scalar_t__ readl (scalar_t__) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int wanxl_puts_command(struct card *card, u32 cmd)
{
 unsigned long timeout = jiffies + 5 * HZ;

 writel(cmd, card->plx + PLX_MAILBOX_1);
 do {
  if (readl(card->plx + PLX_MAILBOX_1) == 0)
   return 0;

  schedule();
 }while (time_after(timeout, jiffies));

 return -1;
}
