
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int cpu_relax () ;
 int jiffies ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static void delay(int ms)
{
 unsigned long timeout = jiffies + ((ms * HZ) / 1000);
 while (time_before(jiffies, timeout))
  cpu_relax();
}
