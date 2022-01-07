
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 scalar_t__ CPU_MODE ;
 int CPU_MODE_HALT ;
 scalar_t__ CPU_STATE ;
 scalar_t__ RX_CPU_BASE ;
 int tg3_pause_cpu (struct tg3*,scalar_t__) ;
 int tw32 (scalar_t__,int) ;
 int tw32_f (scalar_t__,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_rxcpu_pause(struct tg3 *tp)
{
 int rc = tg3_pause_cpu(tp, RX_CPU_BASE);

 tw32(RX_CPU_BASE + CPU_STATE, 0xffffffff);
 tw32_f(RX_CPU_BASE + CPU_MODE, CPU_MODE_HALT);
 udelay(10);

 return rc;
}
