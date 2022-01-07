
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct adapter {int dummy; } ;
 int CIM_HOST_INT_CAUSE_A ;
 int CIM_HOST_UPACC_INT_CAUSE_A ;
 int PCIE_FW_A ;
 int PCIE_FW_ERR_F ;
 scalar_t__ PCIE_FW_EVAL_CRASH ;
 scalar_t__ PCIE_FW_EVAL_G (int) ;
 int t4_fatal_err (struct adapter*) ;
 int t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_report_fw_error (struct adapter*) ;
 int t4_write_reg (struct adapter*,int ,int const) ;

__attribute__((used)) static void cim_intr_handler(struct adapter *adapter)
{
 static const struct intr_info cim_intr_info[] = {
  { 146, "CIM control register prefetch drop", -1, 1 },
  { 154, "CIM OBQ parity error", -1, 1 },
  { 155, "CIM IBQ parity error", -1, 1 },
  { 147, "CIM mailbox uP parity error", -1, 1 },
  { 148, "CIM mailbox host parity error", -1, 1 },
  { 132, "CIM TIEQ outgoing parity error", -1, 1 },
  { 131, "CIM TIEQ incoming parity error", -1, 1 },
  { 128, "CIM TIMER0 interrupt", -1, 1 },
  { 0 }
 };
 static const struct intr_info cim_upintr_info[] = {
  { 143, "CIM reserved space access", -1, 1 },
  { 151, "CIM illegal transaction", -1, 1 },
  { 149, "CIM illegal write", -1, 1 },
  { 152, "CIM illegal read", -1, 1 },
  { 153, "CIM illegal read BE", -1, 1 },
  { 150, "CIM illegal write BE", -1, 1 },
  { 142, "CIM single read from boot space", -1, 1 },
  { 137, "CIM single write to boot space", -1, 1 },
  { 160, "CIM block write to boot space", -1, 1 },
  { 139, "CIM single read from flash space", -1, 1 },
  { 134, "CIM single write to flash space", -1, 1 },
  { 157, "CIM block write to flash space", -1, 1 },
  { 140, "CIM single EEPROM read", -1, 1 },
  { 135, "CIM single EEPROM write", -1, 1 },
  { 162, "CIM block EEPROM read", -1, 1 },
  { 158, "CIM block EEPROM write", -1, 1 },
  { 141, "CIM single read from CTL space", -1, 1 },
  { 136, "CIM single write to CTL space", -1, 1 },
  { 163, "CIM block read from CTL space", -1, 1 },
  { 159, "CIM block write to CTL space", -1, 1 },
  { 138, "CIM single read from PL space", -1, 1 },
  { 133, "CIM single write to PL space", -1, 1 },
  { 161, "CIM block read from PL space", -1, 1 },
  { 156, "CIM block write to PL space", -1, 1 },
  { 145, "CIM request FIFO overwrite", -1, 1 },
  { 144, "CIM response FIFO overwrite", -1, 1 },
  { 130, "CIM PIF timeout", -1, 1 },
  { 129, "CIM PIF MA timeout", -1, 1 },
  { 0 }
 };

 u32 val, fw_err;
 int fat;

 fw_err = t4_read_reg(adapter, PCIE_FW_A);
 if (fw_err & PCIE_FW_ERR_F)
  t4_report_fw_error(adapter);
 val = t4_read_reg(adapter, CIM_HOST_INT_CAUSE_A);
 if (val & 128)
  if (!(fw_err & PCIE_FW_ERR_F) ||
      (PCIE_FW_EVAL_G(fw_err) != PCIE_FW_EVAL_CRASH))
   t4_write_reg(adapter, CIM_HOST_INT_CAUSE_A,
         128);

 fat = t4_handle_intr_status(adapter, CIM_HOST_INT_CAUSE_A,
        cim_intr_info) +
       t4_handle_intr_status(adapter, CIM_HOST_UPACC_INT_CAUSE_A,
        cim_upintr_info);
 if (fat)
  t4_fatal_err(adapter);
}
