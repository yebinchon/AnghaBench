
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;


 int TX_CPU_BASE ;
 int tg3_pause_cpu (struct tg3*,int ) ;

__attribute__((used)) static int tg3_txcpu_pause(struct tg3 *tp)
{
 return tg3_pause_cpu(tp, TX_CPU_BASE);
}
