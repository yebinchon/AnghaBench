
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; int pdev; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int MYPF_REG (int ) ;
 int PL_INT_MAP0_A ;
 int PL_PF_INT_ENABLE_A ;
 int PL_WHOAMI_A ;
 int SOURCEPF_G (int) ;
 int T6_SOURCEPF_G (int) ;
 scalar_t__ pci_channel_offline (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

void t4_intr_disable(struct adapter *adapter)
{
 u32 whoami, pf;

 if (pci_channel_offline(adapter->pdev))
  return;

 whoami = t4_read_reg(adapter, PL_WHOAMI_A);
 pf = CHELSIO_CHIP_VERSION(adapter->params.chip) <= CHELSIO_T5 ?
   SOURCEPF_G(whoami) : T6_SOURCEPF_G(whoami);

 t4_write_reg(adapter, MYPF_REG(PL_PF_INT_ENABLE_A), 0);
 t4_set_reg_field(adapter, PL_INT_MAP0_A, 1 << pf, 0);
}
