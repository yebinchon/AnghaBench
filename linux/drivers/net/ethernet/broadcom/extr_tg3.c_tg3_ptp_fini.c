
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {scalar_t__ ptp_adjust; int * ptp_clock; } ;


 int PTP_CAPABLE ;
 int ptp_clock_unregister (int *) ;
 int tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static void tg3_ptp_fini(struct tg3 *tp)
{
 if (!tg3_flag(tp, PTP_CAPABLE) || !tp->ptp_clock)
  return;

 ptp_clock_unregister(tp->ptp_clock);
 tp->ptp_clock = ((void*)0);
 tp->ptp_adjust = 0;
}
