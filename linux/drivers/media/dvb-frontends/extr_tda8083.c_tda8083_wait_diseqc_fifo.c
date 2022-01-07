
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;


 unsigned long jiffies ;
 int msleep (int) ;
 int tda8083_readreg (struct tda8083_state*,int) ;

__attribute__((used)) static void tda8083_wait_diseqc_fifo (struct tda8083_state* state, int timeout)
{
 unsigned long start = jiffies;

 while (jiffies - start < timeout &&
        !(tda8083_readreg(state, 0x02) & 0x80))
 {
  msleep(50);
 }
}
