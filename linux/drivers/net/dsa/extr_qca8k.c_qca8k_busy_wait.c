
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dummy; } ;


 int cond_resched () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int qca8k_read (struct qca8k_priv*,int) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int
qca8k_busy_wait(struct qca8k_priv *priv, u32 reg, u32 mask)
{
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(20);


 do {
  u32 val = qca8k_read(priv, reg);
  int busy = val & mask;

  if (!busy)
   break;
  cond_resched();
 } while (!time_after_eq(jiffies, timeout));

 return time_after_eq(jiffies, timeout);
}
