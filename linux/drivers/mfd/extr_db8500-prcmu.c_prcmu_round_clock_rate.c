
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ PRCMU_ARMSS ;
 scalar_t__ PRCMU_DSI0CLK ;
 scalar_t__ PRCMU_DSI0ESCCLK ;
 scalar_t__ PRCMU_DSI1CLK ;
 scalar_t__ PRCMU_DSI2ESCCLK ;
 scalar_t__ PRCMU_NUM_REG_CLOCKS ;
 scalar_t__ PRCMU_PLLDSI ;
 scalar_t__ prcmu_clock_rate (scalar_t__) ;
 long round_armss_rate (unsigned long) ;
 long round_clock_rate (scalar_t__,unsigned long) ;
 long round_dsiclk_rate (unsigned long) ;
 long round_dsiescclk_rate (unsigned long) ;
 long round_plldsi_rate (unsigned long) ;

long prcmu_round_clock_rate(u8 clock, unsigned long rate)
{
 if (clock < PRCMU_NUM_REG_CLOCKS)
  return round_clock_rate(clock, rate);
 else if (clock == PRCMU_ARMSS)
  return round_armss_rate(rate);
 else if (clock == PRCMU_PLLDSI)
  return round_plldsi_rate(rate);
 else if ((clock == PRCMU_DSI0CLK) || (clock == PRCMU_DSI1CLK))
  return round_dsiclk_rate(rate);
 else if ((PRCMU_DSI0ESCCLK <= clock) && (clock <= PRCMU_DSI2ESCCLK))
  return round_dsiescclk_rate(rate);
 else
  return (long)prcmu_clock_rate(clock);
}
