
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
 int set_armss_rate (unsigned long) ;
 int set_clock_rate (scalar_t__,unsigned long) ;
 int set_dsiclk_rate (scalar_t__,unsigned long) ;
 int set_dsiescclk_rate (scalar_t__,unsigned long) ;
 int set_plldsi_rate (unsigned long) ;

int prcmu_set_clock_rate(u8 clock, unsigned long rate)
{
 if (clock < PRCMU_NUM_REG_CLOCKS)
  set_clock_rate(clock, rate);
 else if (clock == PRCMU_ARMSS)
  return set_armss_rate(rate);
 else if (clock == PRCMU_PLLDSI)
  return set_plldsi_rate(rate);
 else if ((clock == PRCMU_DSI0CLK) || (clock == PRCMU_DSI1CLK))
  set_dsiclk_rate((clock - PRCMU_DSI0CLK), rate);
 else if ((PRCMU_DSI0ESCCLK <= clock) && (clock <= PRCMU_DSI2ESCCLK))
  set_dsiescclk_rate((clock - PRCMU_DSI0ESCCLK), rate);
 return 0;
}
