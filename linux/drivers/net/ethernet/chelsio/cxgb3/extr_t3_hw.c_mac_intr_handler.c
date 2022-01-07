
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int link_faults; int xaui_pcs_align_change; int xaui_pcs_ctc_err; int serdes_signal_loss; int rx_fifo_ovfl; int tx_fifo_urun; int rx_fifo_parity_err; int tx_fifo_parity_err; } ;
struct cmac {scalar_t__ offset; TYPE_1__ stats; } ;
struct adapter {int dummy; } ;
struct TYPE_4__ {struct cmac mac; } ;


 scalar_t__ A_XGM_INT_CAUSE ;
 scalar_t__ A_XGM_INT_ENABLE ;
 int CH_ALERT (struct adapter*,char*,unsigned int) ;
 int F_RXFIFO_OVERFLOW ;
 int F_TXFIFO_UNDERRUN ;
 int F_XAUIPCSALIGNCHANGE ;
 int F_XAUIPCSCTCERR ;
 int F_XGM_INT ;
 int M_RXFIFO_PRTY_ERR ;
 int M_SERDES_LOS ;
 int M_TXFIFO_PRTY_ERR ;
 int V_RXFIFO_PRTY_ERR (int ) ;
 int V_SERDES_LOS (int ) ;
 int V_TXFIFO_PRTY_ERR (int ) ;
 int XGM_INTR_FATAL ;
 TYPE_2__* adap2pinfo (struct adapter*,unsigned int) ;
 int t3_fatal_err (struct adapter*) ;
 int t3_os_link_fault_handler (struct adapter*,unsigned int) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int,int ) ;
 int t3_write_reg (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static int mac_intr_handler(struct adapter *adap, unsigned int idx)
{
 struct cmac *mac = &adap2pinfo(adap, idx)->mac;






 u32 cause = t3_read_reg(adap, A_XGM_INT_CAUSE + mac->offset) &
      ~F_RXFIFO_OVERFLOW;

 if (cause & V_TXFIFO_PRTY_ERR(M_TXFIFO_PRTY_ERR)) {
  mac->stats.tx_fifo_parity_err++;
  CH_ALERT(adap, "port%d: MAC TX FIFO parity error\n", idx);
 }
 if (cause & V_RXFIFO_PRTY_ERR(M_RXFIFO_PRTY_ERR)) {
  mac->stats.rx_fifo_parity_err++;
  CH_ALERT(adap, "port%d: MAC RX FIFO parity error\n", idx);
 }
 if (cause & F_TXFIFO_UNDERRUN)
  mac->stats.tx_fifo_urun++;
 if (cause & F_RXFIFO_OVERFLOW)
  mac->stats.rx_fifo_ovfl++;
 if (cause & V_SERDES_LOS(M_SERDES_LOS))
  mac->stats.serdes_signal_loss++;
 if (cause & F_XAUIPCSCTCERR)
  mac->stats.xaui_pcs_ctc_err++;
 if (cause & F_XAUIPCSALIGNCHANGE)
  mac->stats.xaui_pcs_align_change++;
 if (cause & F_XGM_INT) {
  t3_set_reg_field(adap,
     A_XGM_INT_ENABLE + mac->offset,
     F_XGM_INT, 0);
  mac->stats.link_faults++;

  t3_os_link_fault_handler(adap, idx);
 }

 if (cause & XGM_INTR_FATAL)
  t3_fatal_err(adap);

 t3_write_reg(adap, A_XGM_INT_CAUSE + mac->offset, cause);
 return cause != 0;
}
