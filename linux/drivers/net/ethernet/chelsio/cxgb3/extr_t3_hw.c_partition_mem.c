
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tp_params {int chan_rx_size; int chan_tx_size; unsigned int tx_pg_size; unsigned int tx_num_pgs; unsigned int rx_pg_size; unsigned int rx_num_pgs; int ntimer_qs; unsigned int cm_size; } ;
struct TYPE_3__ {unsigned int nservers; unsigned int nfilters; unsigned int nroutes; } ;
struct TYPE_4__ {scalar_t__ rev; TYPE_1__ mc5; } ;
struct adapter {TYPE_2__ params; int mc5; } ;


 int A_CIM_SDRAM_ADDR_SIZE ;
 int A_CIM_SDRAM_BASE_ADDR ;
 int A_TP_CMM_MM_MAX_PSTRUCT ;
 int A_TP_CMM_TIMER_BASE ;
 int A_TP_PARA_REG3 ;
 int A_TP_PMM_RX_BASE ;
 int A_TP_PMM_RX_MAX_PAGE ;
 int A_TP_PMM_RX_PAGE_SIZE ;
 int A_TP_PMM_SIZE ;
 int A_TP_PMM_TX_BASE ;
 int A_TP_PMM_TX_MAX_PAGE ;
 int A_TP_PMM_TX_PAGE_SIZE ;
 scalar_t__ M_TXDATAACKIDX ;
 int SG_CQ_CONTEXT_BADDR ;
 int SG_EGR_CNTX_BADDR ;
 unsigned int TCB_SIZE ;
 int TP_CMM_MM_BASE ;
 int TP_CMM_MM_PS_FLST_BASE ;
 int TP_CMM_MM_RX_FLST_BASE ;
 int TP_CMM_MM_TX_FLST_BASE ;
 unsigned int V_CMTIMERMAXNUM (unsigned int) ;
 int V_TXDATAACKIDX (scalar_t__) ;
 scalar_t__ fls (unsigned int) ;
 int mem_region (struct adapter*,unsigned int,int,int ) ;
 unsigned int t3_mc5_size (int *) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

__attribute__((used)) static void partition_mem(struct adapter *adap, const struct tp_params *p)
{
 unsigned int m, pstructs, tids = t3_mc5_size(&adap->mc5);
 unsigned int timers = 0, timers_shift = 22;

 if (adap->params.rev > 0) {
  if (tids <= 16 * 1024) {
   timers = 1;
   timers_shift = 16;
  } else if (tids <= 64 * 1024) {
   timers = 2;
   timers_shift = 18;
  } else if (tids <= 256 * 1024) {
   timers = 3;
   timers_shift = 20;
  }
 }

 t3_write_reg(adap, A_TP_PMM_SIZE,
       p->chan_rx_size | (p->chan_tx_size >> 16));

 t3_write_reg(adap, A_TP_PMM_TX_BASE, 0);
 t3_write_reg(adap, A_TP_PMM_TX_PAGE_SIZE, p->tx_pg_size);
 t3_write_reg(adap, A_TP_PMM_TX_MAX_PAGE, p->tx_num_pgs);
 t3_set_reg_field(adap, A_TP_PARA_REG3, V_TXDATAACKIDX(M_TXDATAACKIDX),
    V_TXDATAACKIDX(fls(p->tx_pg_size) - 12));

 t3_write_reg(adap, A_TP_PMM_RX_BASE, 0);
 t3_write_reg(adap, A_TP_PMM_RX_PAGE_SIZE, p->rx_pg_size);
 t3_write_reg(adap, A_TP_PMM_RX_MAX_PAGE, p->rx_num_pgs);

 pstructs = p->rx_num_pgs + p->tx_num_pgs;

 pstructs += 48;
 pstructs -= pstructs % 24;
 t3_write_reg(adap, A_TP_CMM_MM_MAX_PSTRUCT, pstructs);

 m = tids * TCB_SIZE;
 mem_region(adap, m, (64 << 10) * 64, SG_EGR_CNTX_BADDR);
 mem_region(adap, m, (64 << 10) * 64, SG_CQ_CONTEXT_BADDR);
 t3_write_reg(adap, A_TP_CMM_TIMER_BASE, V_CMTIMERMAXNUM(timers) | m);
 m += ((p->ntimer_qs - 1) << timers_shift) + (1 << 22);
 mem_region(adap, m, pstructs * 64, TP_CMM_MM_BASE);
 mem_region(adap, m, 64 * (pstructs / 24), TP_CMM_MM_PS_FLST_BASE);
 mem_region(adap, m, 64 * (p->rx_num_pgs / 24), TP_CMM_MM_RX_FLST_BASE);
 mem_region(adap, m, 64 * (p->tx_num_pgs / 24), TP_CMM_MM_TX_FLST_BASE);

 m = (m + 4095) & ~0xfff;
 t3_write_reg(adap, A_CIM_SDRAM_BASE_ADDR, m);
 t3_write_reg(adap, A_CIM_SDRAM_ADDR_SIZE, p->cm_size - m);

 tids = (p->cm_size - m - (3 << 20)) / 3072 - 32;
 m = t3_mc5_size(&adap->mc5) - adap->params.mc5.nservers -
     adap->params.mc5.nfilters - adap->params.mc5.nroutes;
 if (tids < m)
  adap->params.mc5.nservers += m - tids;
}
