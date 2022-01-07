
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int CIM_F ;
 int CPL_SWITCH_F ;
 int EDC0_F ;
 int EDC1_F ;
 int GLBL_INTR_MASK ;
 int LE_F ;
 int MA_F ;
 int MC1_F ;
 int MC_F ;
 int MEM_EDC0 ;
 int MEM_EDC1 ;
 int MEM_MC ;
 int MEM_MC1 ;
 int MPS_F ;
 int NCSI_F ;
 int PCIE_F ;
 int PL_F ;
 int PL_INT_CAUSE_A ;
 int PL_INT_ENABLE_A ;
 int PM_RX_F ;
 int PM_TX_F ;
 int SGE_F ;
 int SMB_F ;
 int TP_F ;
 int ULP_RX_F ;
 int ULP_TX_F ;
 int XGMAC0_F ;
 int XGMAC1_F ;
 int XGMAC_KR0_F ;
 int XGMAC_KR1_F ;
 int cim_intr_handler (struct adapter*) ;
 int cplsw_intr_handler (struct adapter*) ;
 scalar_t__ is_t5 (int ) ;
 int le_intr_handler (struct adapter*) ;
 int ma_intr_handler (struct adapter*) ;
 int mem_intr_handler (struct adapter*,int ) ;
 int mps_intr_handler (struct adapter*) ;
 int ncsi_intr_handler (struct adapter*) ;
 int pcie_intr_handler (struct adapter*) ;
 int pl_intr_handler (struct adapter*) ;
 int pmrx_intr_handler (struct adapter*) ;
 int pmtx_intr_handler (struct adapter*) ;
 int sge_intr_handler (struct adapter*) ;
 int smb_intr_handler (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int tp_intr_handler (struct adapter*) ;
 int ulprx_intr_handler (struct adapter*) ;
 int ulptx_intr_handler (struct adapter*) ;
 int xgmac_intr_handler (struct adapter*,int) ;

int t4_slow_intr_handler(struct adapter *adapter)
{




 u32 raw_cause = t4_read_reg(adapter, PL_INT_CAUSE_A);
 u32 enable = t4_read_reg(adapter, PL_INT_ENABLE_A);
 u32 cause = raw_cause & enable;

 if (!(cause & GLBL_INTR_MASK))
  return 0;
 if (cause & CIM_F)
  cim_intr_handler(adapter);
 if (cause & MPS_F)
  mps_intr_handler(adapter);
 if (cause & NCSI_F)
  ncsi_intr_handler(adapter);
 if (cause & PL_F)
  pl_intr_handler(adapter);
 if (cause & SMB_F)
  smb_intr_handler(adapter);
 if (cause & XGMAC0_F)
  xgmac_intr_handler(adapter, 0);
 if (cause & XGMAC1_F)
  xgmac_intr_handler(adapter, 1);
 if (cause & XGMAC_KR0_F)
  xgmac_intr_handler(adapter, 2);
 if (cause & XGMAC_KR1_F)
  xgmac_intr_handler(adapter, 3);
 if (cause & PCIE_F)
  pcie_intr_handler(adapter);
 if (cause & MC_F)
  mem_intr_handler(adapter, MEM_MC);
 if (is_t5(adapter->params.chip) && (cause & MC1_F))
  mem_intr_handler(adapter, MEM_MC1);
 if (cause & EDC0_F)
  mem_intr_handler(adapter, MEM_EDC0);
 if (cause & EDC1_F)
  mem_intr_handler(adapter, MEM_EDC1);
 if (cause & LE_F)
  le_intr_handler(adapter);
 if (cause & TP_F)
  tp_intr_handler(adapter);
 if (cause & MA_F)
  ma_intr_handler(adapter);
 if (cause & PM_TX_F)
  pmtx_intr_handler(adapter);
 if (cause & PM_RX_F)
  pmrx_intr_handler(adapter);
 if (cause & ULP_RX_F)
  ulprx_intr_handler(adapter);
 if (cause & CPL_SWITCH_F)
  cplsw_intr_handler(adapter);
 if (cause & SGE_F)
  sge_intr_handler(adapter);
 if (cause & ULP_TX_F)
  ulptx_intr_handler(adapter);


 t4_write_reg(adapter, PL_INT_CAUSE_A, raw_cause & GLBL_INTR_MASK);
 (void)t4_read_reg(adapter, PL_INT_CAUSE_A);
 return 1;
}
