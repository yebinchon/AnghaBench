
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int EINVAL ;
 int FW_LDST_ADDRSPC_TP_MIB ;
 int FW_LDST_ADDRSPC_TP_PIO ;
 int FW_LDST_ADDRSPC_TP_TM_PIO ;



 int t4_read_indirect (struct adapter*,int,int,int*,int,int) ;
 int t4_tp_fw_ldst_rw (struct adapter*,int,int*,int,int,int,int) ;
 scalar_t__ t4_use_ldst (struct adapter*) ;
 int t4_write_indirect (struct adapter*,int,int,int*,int,int) ;

__attribute__((used)) static void t4_tp_indirect_rw(struct adapter *adap, u32 reg_addr, u32 reg_data,
         u32 *buff, u32 nregs, u32 start_index, int rw,
         bool sleep_ok)
{
 int rc = -EINVAL;
 int cmd;

 switch (reg_addr) {
 case 129:
  cmd = FW_LDST_ADDRSPC_TP_PIO;
  break;
 case 128:
  cmd = FW_LDST_ADDRSPC_TP_TM_PIO;
  break;
 case 130:
  cmd = FW_LDST_ADDRSPC_TP_MIB;
  break;
 default:
  goto indirect_access;
 }

 if (t4_use_ldst(adap))
  rc = t4_tp_fw_ldst_rw(adap, cmd, buff, nregs, start_index, rw,
          sleep_ok);

indirect_access:

 if (rc) {
  if (rw)
   t4_read_indirect(adap, reg_addr, reg_data, buff, nregs,
      start_index);
  else
   t4_write_indirect(adap, reg_addr, reg_data, buff, nregs,
       start_index);
 }
}
