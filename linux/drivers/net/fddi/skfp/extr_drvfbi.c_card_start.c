
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct TYPE_2__ {int hw_state; int is_imask; int hw_is_64bit; } ;
struct s_smc {TYPE_1__ hw; } ;


 int ADDR (int ) ;
 int B0_CTRL ;
 int B0_LED ;
 int B0_TST_CTRL ;
 int B2_WDOG_INI ;
 int B4_R1_F ;
 int B5_XA_F ;
 int B5_XS_F ;
 int CTRL_HPI_CLR ;
 int CTRL_HPI_SET ;
 int CTRL_MRST_CLR ;
 int CTRL_RST_CLR ;
 int CTRL_RST_SET ;
 int FALSE ;
 int FM_A (int ) ;
 int FM_MDREG1 ;
 int FM_MINIT ;
 int GET_PAGE (int ) ;
 int ISR_MASK ;
 int LED_GA_OFF ;
 int LED_GB_OFF ;
 int LED_MY_ON ;
 int MS2BCLK (int) ;
 int PCI_C (int ) ;
 int PCI_ERRBITS ;
 int PCI_REVISION_ID ;
 int PCI_STATUS ;
 int RX_WATERMARK ;
 int SK_ML_ID_1 ;
 int SK_ML_ID_2 ;
 int SK_UNUSED (int) ;
 int STOPPED ;
 int TRUE ;
 int TST_CFG_WRITE_OFF ;
 int TST_CFG_WRITE_ON ;
 int TX_WATERMARK ;
 int hwt_quick_read (struct s_smc*) ;
 int hwt_wait_time (struct s_smc*,int ,int ) ;
 int inp (int ) ;
 int inpw (int ) ;
 int outp (int ,int) ;
 int outpd (int ,int) ;
 int outpw (int ,int) ;
 int smt_stop_watchdog (struct s_smc*) ;

__attribute__((used)) static void card_start(struct s_smc *smc)
{
 int i ;





 smt_stop_watchdog(smc) ;
 GET_PAGE(0) ;
}
