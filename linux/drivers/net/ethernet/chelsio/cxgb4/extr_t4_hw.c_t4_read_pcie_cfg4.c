
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ctrl_to_fn; int r; int * data; int select_naccess; } ;
struct TYPE_4__ {TYPE_1__ pcie; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int mbox; int pf; } ;
typedef int ldst_cmd ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_LDST_ADDRSPC_FUNC_PCIE ;
 int FW_LDST_CMD ;
 int FW_LDST_CMD_ADDRSPACE_V (int ) ;
 int FW_LDST_CMD_FN_V (int ) ;
 int FW_LDST_CMD_LC_F ;
 int FW_LDST_CMD_NACCESS_V (int) ;
 int FW_LEN16 (struct fw_ldst_cmd) ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_ldst_cmd*,int ,int) ;
 int t4_hw_pci_read_cfg4 (struct adapter*,int,int*) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ;

u32 t4_read_pcie_cfg4(struct adapter *adap, int reg)
{
 u32 val, ldst_addrspace;




 struct fw_ldst_cmd ldst_cmd;
 int ret;

 memset(&ldst_cmd, 0, sizeof(ldst_cmd));
 ldst_addrspace = FW_LDST_CMD_ADDRSPACE_V(FW_LDST_ADDRSPC_FUNC_PCIE);
 ldst_cmd.op_to_addrspace = cpu_to_be32(FW_CMD_OP_V(FW_LDST_CMD) |
            FW_CMD_REQUEST_F |
            FW_CMD_READ_F |
            ldst_addrspace);
 ldst_cmd.cycles_to_len16 = cpu_to_be32(FW_LEN16(ldst_cmd));
 ldst_cmd.u.pcie.select_naccess = FW_LDST_CMD_NACCESS_V(1);
 ldst_cmd.u.pcie.ctrl_to_fn =
  (FW_LDST_CMD_LC_F | FW_LDST_CMD_FN_V(adap->pf));
 ldst_cmd.u.pcie.r = reg;




 ret = t4_wr_mbox(adap, adap->mbox, &ldst_cmd, sizeof(ldst_cmd),
    &ldst_cmd);
 if (ret == 0)
  val = be32_to_cpu(ldst_cmd.u.pcie.data[0]);
 else



  t4_hw_pci_read_cfg4(adap, reg, &val);
 return val;
}
