
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int CIM_BOOT_CFG_A ;
 int ETIMEDOUT ;
 int FW_CMD_MAX_TIMEOUT ;
 int PCIE_FW_A ;
 int PCIE_FW_HALT_F ;
 unsigned int PCIE_FW_MASTER_M ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int PL_RST_A ;
 int UPCRST_F ;
 int msleep (int) ;
 scalar_t__ t4_fw_reset (struct adapter*,unsigned int,int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int t4_fw_restart(struct adapter *adap, unsigned int mbox, int reset)
{
 if (reset) {





  t4_set_reg_field(adap, PCIE_FW_A, PCIE_FW_HALT_F, 0);
  if (mbox <= PCIE_FW_MASTER_M) {
   t4_set_reg_field(adap, CIM_BOOT_CFG_A, UPCRST_F, 0);
   msleep(100);
   if (t4_fw_reset(adap, mbox,
     PIORST_F | PIORSTMODE_F) == 0)
    return 0;
  }

  t4_write_reg(adap, PL_RST_A, PIORST_F | PIORSTMODE_F);
  msleep(2000);
 } else {
  int ms;

  t4_set_reg_field(adap, CIM_BOOT_CFG_A, UPCRST_F, 0);
  for (ms = 0; ms < FW_CMD_MAX_TIMEOUT; ) {
   if (!(t4_read_reg(adap, PCIE_FW_A) & PCIE_FW_HALT_F))
    return 0;
   msleep(100);
   ms += 100;
  }
  return -ETIMEDOUT;
 }
 return 0;
}
