
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int flags; int pdev_dev; } ;


 int CXGB4_FW_OK ;
 int PCIE_FW_A ;
 int PCIE_FW_ERR_F ;
 size_t PCIE_FW_EVAL_G (int) ;
 int dev_err (int ,char*,char const* const) ;
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static void t4_report_fw_error(struct adapter *adap)
{
 static const char *const reason[] = {
  "Crash",
  "During Device Preparation",
  "During Device Configuration",
  "During Device Initialization",
  "Unexpected Event",
  "Insufficient Airflow",
  "Device Shutdown",
  "Reserved",
 };
 u32 pcie_fw;

 pcie_fw = t4_read_reg(adap, PCIE_FW_A);
 if (pcie_fw & PCIE_FW_ERR_F) {
  dev_err(adap->pdev_dev, "Firmware reports adapter error: %s\n",
   reason[PCIE_FW_EVAL_G(pcie_fw)]);
  adap->flags &= ~CXGB4_FW_OK;
 }
}
