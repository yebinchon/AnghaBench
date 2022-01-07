
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; int pf; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int ENABLE_F ;
 int FUNCTION_V (int ) ;
 int LOCALCFG_F ;
 int PCIE_CFG_SPACE_DATA_A ;
 int PCIE_CFG_SPACE_REQ_A ;
 int REGISTER_V (int) ;
 int T6_ENABLE_F ;
 scalar_t__ is_t4 (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_hw_pci_read_cfg4(struct adapter *adap, int reg, u32 *val)
{
 u32 req = FUNCTION_V(adap->pf) | REGISTER_V(reg);

 if (CHELSIO_CHIP_VERSION(adap->params.chip) <= CHELSIO_T5)
  req |= ENABLE_F;
 else
  req |= T6_ENABLE_F;

 if (is_t4(adap->params.chip))
  req |= LOCALCFG_F;

 t4_write_reg(adap, PCIE_CFG_SPACE_REQ_A, req);
 *val = t4_read_reg(adap, PCIE_CFG_SPACE_DATA_A);






 t4_write_reg(adap, PCIE_CFG_SPACE_REQ_A, 0);
}
