
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
struct TYPE_5__ {int mdr2init; int rx_mode; int mdr3init; int frselreg_init; } ;
struct TYPE_8__ {int hw_state; int hw_is_64bit; TYPE_1__ fp; } ;
struct TYPE_7__ {TYPE_2__* m; } ;
struct s_smc {TYPE_4__ hw; TYPE_3__ mib; } ;
struct TYPE_6__ {int fddiMACT_Max; int fddiMACTvxValue; int fddiMACT_Req; } ;


 int ADDR (int ) ;
 int B0_CTRL ;
 int B0_R1_CSR ;
 int B0_XA_CSR ;
 int B0_XS_CSR ;
 int B4_R1_F ;
 int B5_XA_F ;
 int B5_XS_F ;
 int CSR_CLR_RESET ;
 int CSR_SET_RESET ;
 int CTRL_HPI_CLR ;
 int CTRL_HPI_SET ;
 int FM_A (int ) ;
 int FM_CMDREG1 ;
 int FM_FRMTHR ;
 int FM_FRSELREG ;
 int FM_ICLLA0 ;
 int FM_ICLLR ;
 int FM_ICLLS ;
 int FM_MDREG1 ;
 int FM_MDREG2 ;
 int FM_MDREG3 ;
 int FM_MINIT ;
 int FM_MMEMACT ;
 int FM_SELRA ;
 int FM_TMAX ;
 int FM_TVX ;
 int FM_UNLCKDLY ;
 size_t MAC0 ;
 int MB ;
 int MDR1INIT ;
 int MS2BCLK (int) ;
 int RX_WATERMARK ;
 int STARTED ;
 int STOPPED ;
 int TX_WATERMARK ;
 scalar_t__ US2BCLK (int) ;
 int build_claim_beacon (struct s_smc*,int ) ;
 int hwt_quick_read (struct s_smc*) ;
 int hwt_wait_time (struct s_smc*,int,int ) ;
 int init_ram (struct s_smc*) ;
 int init_rbc (struct s_smc*) ;
 int init_rx (struct s_smc*) ;
 int init_tx (struct s_smc*) ;
 int mac_drv_repair_descr (struct s_smc*) ;
 int outp (int ,int ) ;
 int outpd (int ,int ) ;
 int outpw (int ,int) ;
 int rtm_init (struct s_smc*) ;
 int set_formac_addr (struct s_smc*) ;
 int smt_split_up_fifo (struct s_smc*) ;

__attribute__((used)) static int init_mac(struct s_smc *smc, int all)
{
 u_short t_max,x ;
 u_long time=0 ;




 outpw(FM_A(FM_MDREG1),FM_MINIT) ;
 set_formac_addr(smc) ;
 outpw(FM_A(FM_MDREG1),FM_MMEMACT) ;

 outpw(FM_A(FM_MDREG2),smc->hw.fp.mdr2init) ;

 if (all) {
  init_ram(smc) ;
 }
 else {



  outp(ADDR(B0_CTRL), CTRL_HPI_SET) ;
  time = hwt_quick_read(smc) ;
 }




 smt_split_up_fifo(smc) ;

 init_tx(smc) ;
 init_rx(smc) ;
 init_rbc(smc) ;

 build_claim_beacon(smc,smc->mib.m[MAC0].fddiMACT_Req) ;



 outpw(FM_A(FM_FRMTHR),14<<12) ;


 outpw(FM_A(FM_MDREG1),MDR1INIT | FM_SELRA | smc->hw.fp.rx_mode) ;
 outpw(FM_A(FM_MDREG2),smc->hw.fp.mdr2init) ;
 outpw(FM_A(FM_MDREG3),smc->hw.fp.mdr3init) ;
 outpw(FM_A(FM_FRSELREG),smc->hw.fp.frselreg_init) ;







 t_max = (u_short)(smc->mib.m[MAC0].fddiMACT_Max/32) ;
 x = t_max/0x27 ;
 x *= 0x27 ;
 if ((t_max == 0xfffe) || (t_max - x == 0x16))
  t_max-- ;
 outpw(FM_A(FM_TMAX),(u_short)t_max) ;


 if (smc->mib.m[MAC0].fddiMACTvxValue < (u_long) (- US2BCLK(52))) {
  outpw(FM_A(FM_TVX), (u_short) (- US2BCLK(52))/255 & MB) ;
 } else {
  outpw(FM_A(FM_TVX),
   (u_short)((smc->mib.m[MAC0].fddiMACTvxValue/255) & MB)) ;
 }

 outpw(FM_A(FM_CMDREG1),FM_ICLLS) ;
 outpw(FM_A(FM_CMDREG1),FM_ICLLA0) ;
 outpw(FM_A(FM_CMDREG1),FM_ICLLR);


 outpw(FM_A(FM_UNLCKDLY),(0xff|(0xff<<8))) ;

 rtm_init(smc) ;

 if (!all) {



  hwt_wait_time(smc,time,MS2BCLK(10)) ;
  outpd(ADDR(B0_R1_CSR),CSR_SET_RESET) ;
  outpd(ADDR(B0_XA_CSR),CSR_SET_RESET) ;
  outpd(ADDR(B0_XS_CSR),CSR_SET_RESET) ;
  outp(ADDR(B0_CTRL), CTRL_HPI_CLR) ;
  outpd(ADDR(B0_R1_CSR),CSR_CLR_RESET) ;
  outpd(ADDR(B0_XA_CSR),CSR_CLR_RESET) ;
  outpd(ADDR(B0_XS_CSR),CSR_CLR_RESET) ;
  if (!smc->hw.hw_is_64bit) {
   outpd(ADDR(B4_R1_F), RX_WATERMARK) ;
   outpd(ADDR(B5_XA_F), TX_WATERMARK) ;
   outpd(ADDR(B5_XS_F), TX_WATERMARK) ;
  }
  smc->hw.hw_state = STOPPED ;
  mac_drv_repair_descr(smc) ;
 }
 smc->hw.hw_state = STARTED ;

 return 0;
}
