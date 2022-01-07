
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_state; scalar_t__ mac_ring_is_up; } ;
struct s_smc {TYPE_1__ hw; } ;


 int ADDR (int ) ;
 int B0_CTRL ;
 int B0_LED ;
 int CTRL_HPI_SET ;
 int CTRL_RST_CLR ;
 int CTRL_RST_SET ;
 int FM_A (int ) ;
 int FM_MDREG1 ;
 int FM_MINIT ;
 int LED_GA_OFF ;
 int LED_GB_OFF ;
 int LED_MY_OFF ;
 int MS2BCLK (int) ;
 int STOPPED ;
 int hwt_quick_read (struct s_smc*) ;
 int hwt_wait_time (struct s_smc*,int ,int ) ;
 int outp (int ,int) ;
 int outpw (int ,int ) ;
 int smt_stop_watchdog (struct s_smc*) ;

void card_stop(struct s_smc *smc)
{
 smt_stop_watchdog(smc) ;
 smc->hw.mac_ring_is_up = 0 ;
}
