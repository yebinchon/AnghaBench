
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (unsigned int,int) ;
 int ndelay (unsigned int) ;
 int udelay (int ) ;

__attribute__((used)) static void cond_delay(unsigned int ns)
{
 if (!ns)
  return;

 if (ns < 10000)
  ndelay(ns);
 else
  udelay(DIV_ROUND_UP(ns, 1000));
}
