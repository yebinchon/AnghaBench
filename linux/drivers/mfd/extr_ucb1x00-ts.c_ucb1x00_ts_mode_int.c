
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int ucb; } ;


 int UCB_TS_CR ;
 int UCB_TS_CR_MODE_INT ;
 int UCB_TS_CR_TSMX_POW ;
 int UCB_TS_CR_TSMY_GND ;
 int UCB_TS_CR_TSPX_POW ;
 int UCB_TS_CR_TSPY_GND ;
 int ucb1x00_reg_write (int ,int ,int) ;

__attribute__((used)) static inline void ucb1x00_ts_mode_int(struct ucb1x00_ts *ts)
{
 ucb1x00_reg_write(ts->ucb, UCB_TS_CR,
   UCB_TS_CR_TSMX_POW | UCB_TS_CR_TSPX_POW |
   UCB_TS_CR_TSMY_GND | UCB_TS_CR_TSPY_GND |
   UCB_TS_CR_MODE_INT);
}
