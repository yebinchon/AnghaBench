
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w5100_priv {int dummy; } ;


 int EIO ;
 int W5100_S0_CR (struct w5100_priv*) ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ w5100_read (struct w5100_priv*,int ) ;
 int w5100_write (struct w5100_priv*,int ,int ) ;

__attribute__((used)) static int w5100_command(struct w5100_priv *priv, u16 cmd)
{
 unsigned long timeout;

 w5100_write(priv, W5100_S0_CR(priv), cmd);

 timeout = jiffies + msecs_to_jiffies(100);

 while (w5100_read(priv, W5100_S0_CR(priv)) != 0) {
  if (time_after(jiffies, timeout))
   return -EIO;
  cpu_relax();
 }

 return 0;
}
