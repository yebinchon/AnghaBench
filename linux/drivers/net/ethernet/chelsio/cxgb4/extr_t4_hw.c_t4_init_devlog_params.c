
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fw_devlog_e {int dummy; } ;
struct fw_devlog_cmd {int memsize_devlog; int memtype_devlog_memaddr16_devlog; void* retval_len16; void* op_to_write; } ;
struct devlog_params {int start; unsigned int size; int memtype; } ;
struct TYPE_2__ {struct devlog_params devlog; } ;
struct adapter {int mbox; TYPE_1__ params; } ;
typedef int devlog_cmd ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_DEVLOG_CMD ;
 int FW_DEVLOG_CMD_MEMADDR16_DEVLOG_G (unsigned int) ;
 int FW_DEVLOG_CMD_MEMTYPE_DEVLOG_G (unsigned int) ;
 int FW_LEN16 (struct fw_devlog_cmd) ;
 int PCIE_FW_PF_A ;
 int PCIE_FW_PF_DEVLOG ;
 int PCIE_FW_PF_DEVLOG_ADDR16_G (scalar_t__) ;
 int PCIE_FW_PF_DEVLOG_MEMTYPE_G (scalar_t__) ;
 unsigned int PCIE_FW_PF_DEVLOG_NENTRIES128_G (scalar_t__) ;
 int PCIE_FW_REG (int ,int ) ;
 void* be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_devlog_cmd*,int ,int) ;
 scalar_t__ t4_read_reg (struct adapter*,int ) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_devlog_cmd*,int,struct fw_devlog_cmd*) ;

int t4_init_devlog_params(struct adapter *adap)
{
 struct devlog_params *dparams = &adap->params.devlog;
 u32 pf_dparams;
 unsigned int devlog_meminfo;
 struct fw_devlog_cmd devlog_cmd;
 int ret;





 pf_dparams =
  t4_read_reg(adap, PCIE_FW_REG(PCIE_FW_PF_A, PCIE_FW_PF_DEVLOG));
 if (pf_dparams) {
  unsigned int nentries, nentries128;

  dparams->memtype = PCIE_FW_PF_DEVLOG_MEMTYPE_G(pf_dparams);
  dparams->start = PCIE_FW_PF_DEVLOG_ADDR16_G(pf_dparams) << 4;

  nentries128 = PCIE_FW_PF_DEVLOG_NENTRIES128_G(pf_dparams);
  nentries = (nentries128 + 1) * 128;
  dparams->size = nentries * sizeof(struct fw_devlog_e);

  return 0;
 }



 memset(&devlog_cmd, 0, sizeof(devlog_cmd));
 devlog_cmd.op_to_write = cpu_to_be32(FW_CMD_OP_V(FW_DEVLOG_CMD) |
          FW_CMD_REQUEST_F | FW_CMD_READ_F);
 devlog_cmd.retval_len16 = cpu_to_be32(FW_LEN16(devlog_cmd));
 ret = t4_wr_mbox(adap, adap->mbox, &devlog_cmd, sizeof(devlog_cmd),
    &devlog_cmd);
 if (ret)
  return ret;

 devlog_meminfo =
  be32_to_cpu(devlog_cmd.memtype_devlog_memaddr16_devlog);
 dparams->memtype = FW_DEVLOG_CMD_MEMTYPE_DEVLOG_G(devlog_meminfo);
 dparams->start = FW_DEVLOG_CMD_MEMADDR16_DEVLOG_G(devlog_meminfo) << 4;
 dparams->size = be32_to_cpu(devlog_cmd.memsize_devlog);

 return 0;
}
