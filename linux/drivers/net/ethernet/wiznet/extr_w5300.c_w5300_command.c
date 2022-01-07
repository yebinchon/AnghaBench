
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w5300_priv {int dummy; } ;


 int EIO ;
 int W5300_S0_CR ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ w5300_read (struct w5300_priv*,int ) ;
 int w5300_write (struct w5300_priv*,int ,int ) ;

__attribute__((used)) static int w5300_command(struct w5300_priv *priv, u16 cmd)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(100);

 w5300_write(priv, W5300_S0_CR, cmd);

 while (w5300_read(priv, W5300_S0_CR) != 0) {
  if (time_after(jiffies, timeout))
   return -EIO;
  cpu_relax();
 }

 return 0;
}
