
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int slow_intr_mask; int mc5; int cm; int pmtx; int pmrx; } ;


 int A_PL_INT_CAUSE0 ;
 int F_CIM ;
 int F_CPL_SWITCH ;
 int F_MC5A ;
 int F_MC7_CM ;
 int F_MC7_PMRX ;
 int F_MC7_PMTX ;
 int F_MPS0 ;
 int F_PCIM0 ;
 int F_PM1_RX ;
 int F_PM1_TX ;
 int F_SGE3 ;
 int F_T3DBG ;
 int F_TP1 ;
 int F_ULP2_RX ;
 int F_ULP2_TX ;
 int F_XGMAC0_0 ;
 int F_XGMAC0_1 ;
 int cim_intr_handler (struct adapter*) ;
 int cplsw_intr_handler (struct adapter*) ;
 scalar_t__ is_pcie (struct adapter*) ;
 int mac_intr_handler (struct adapter*,int) ;
 int mc7_intr_handler (int *) ;
 int mps_intr_handler (struct adapter*) ;
 int pci_intr_handler (struct adapter*) ;
 int pcie_intr_handler (struct adapter*) ;
 int pmrx_intr_handler (struct adapter*) ;
 int pmtx_intr_handler (struct adapter*) ;
 int t3_mc5_intr_handler (int *) ;
 int t3_os_ext_intr_handler (struct adapter*) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_sge_err_intr_handler (struct adapter*) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 int tp_intr_handler (struct adapter*) ;
 int ulprx_intr_handler (struct adapter*) ;
 int ulptx_intr_handler (struct adapter*) ;

int t3_slow_intr_handler(struct adapter *adapter)
{
 u32 cause = t3_read_reg(adapter, A_PL_INT_CAUSE0);

 cause &= adapter->slow_intr_mask;
 if (!cause)
  return 0;
 if (cause & F_PCIM0) {
  if (is_pcie(adapter))
   pcie_intr_handler(adapter);
  else
   pci_intr_handler(adapter);
 }
 if (cause & F_SGE3)
  t3_sge_err_intr_handler(adapter);
 if (cause & F_MC7_PMRX)
  mc7_intr_handler(&adapter->pmrx);
 if (cause & F_MC7_PMTX)
  mc7_intr_handler(&adapter->pmtx);
 if (cause & F_MC7_CM)
  mc7_intr_handler(&adapter->cm);
 if (cause & F_CIM)
  cim_intr_handler(adapter);
 if (cause & F_TP1)
  tp_intr_handler(adapter);
 if (cause & F_ULP2_RX)
  ulprx_intr_handler(adapter);
 if (cause & F_ULP2_TX)
  ulptx_intr_handler(adapter);
 if (cause & F_PM1_RX)
  pmrx_intr_handler(adapter);
 if (cause & F_PM1_TX)
  pmtx_intr_handler(adapter);
 if (cause & F_CPL_SWITCH)
  cplsw_intr_handler(adapter);
 if (cause & F_MPS0)
  mps_intr_handler(adapter);
 if (cause & F_MC5A)
  t3_mc5_intr_handler(&adapter->mc5);
 if (cause & F_XGMAC0_0)
  mac_intr_handler(adapter, 0);
 if (cause & F_XGMAC0_1)
  mac_intr_handler(adapter, 1);
 if (cause & F_T3DBG)
  t3_os_ext_intr_handler(adapter);


 t3_write_reg(adapter, A_PL_INT_CAUSE0, cause);
 t3_read_reg(adapter, A_PL_INT_CAUSE0);
 return 1;
}
