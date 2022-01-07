
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond_resched () ;
 int msleep (int) ;
 int udelay (int) ;

void cfi_udelay(int us)
{
 if (us >= 1000) {
  msleep((us+999)/1000);
 } else {
  udelay(us);
  cond_resched();
 }
}
