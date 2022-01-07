
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int u8 ;
struct fw_vi_mac_exact {int valid_to_idx; int macaddr; } ;
struct TYPE_4__ {struct fw_vi_mac_exact* exact; } ;
struct fw_vi_mac_cmd {void* op_to_viid; void* freemacs_to_len16; TYPE_1__ u; } ;
struct TYPE_5__ {unsigned int mps_tcam_size; } ;
struct TYPE_6__ {int chip; scalar_t__ viid_smt_extn_support; TYPE_2__ arch; } ;
struct adapter {TYPE_3__ params; } ;
typedef int c ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int ENOMEM ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 unsigned int FW_VIID_VIN_M ;
 int FW_VI_MAC_ADD_MAC ;
 int FW_VI_MAC_ADD_PERSIST_MAC ;
 int FW_VI_MAC_CMD ;
 int FW_VI_MAC_CMD_IDX_G (int ) ;
 int FW_VI_MAC_CMD_IDX_V (int) ;
 int FW_VI_MAC_CMD_SMAC_RESULT_V (int) ;
 unsigned int FW_VI_MAC_CMD_SMTID_G (int ) ;
 int FW_VI_MAC_CMD_VALID_F ;
 int FW_VI_MAC_CMD_VIID_V (unsigned int) ;
 int FW_VI_MAC_MPS_TCAM_ENTRY ;
 int FW_VI_MAC_SMT_AND_MPSTCAM ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (void*) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,unsigned int const*,int) ;
 int memset (struct fw_vi_mac_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*) ;

int t4_change_mac(struct adapter *adap, unsigned int mbox, unsigned int viid,
    int idx, const u8 *addr, bool persist, u8 *smt_idx)
{
 int ret, mode;
 struct fw_vi_mac_cmd c;
 struct fw_vi_mac_exact *p = c.u.exact;
 unsigned int max_mac_addr = adap->params.arch.mps_tcam_size;

 if (idx < 0)
  idx = persist ? FW_VI_MAC_ADD_PERSIST_MAC : FW_VI_MAC_ADD_MAC;
 mode = smt_idx ? FW_VI_MAC_SMT_AND_MPSTCAM : FW_VI_MAC_MPS_TCAM_ENTRY;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_MAC_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
       FW_VI_MAC_CMD_VIID_V(viid));
 c.freemacs_to_len16 = cpu_to_be32(FW_CMD_LEN16_V(1));
 p->valid_to_idx = cpu_to_be16(FW_VI_MAC_CMD_VALID_F |
          FW_VI_MAC_CMD_SMAC_RESULT_V(mode) |
          FW_VI_MAC_CMD_IDX_V(idx));
 memcpy(p->macaddr, addr, sizeof(p->macaddr));

 ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
 if (ret == 0) {
  ret = FW_VI_MAC_CMD_IDX_G(be16_to_cpu(p->valid_to_idx));
  if (ret >= max_mac_addr)
   ret = -ENOMEM;
  if (smt_idx) {
   if (adap->params.viid_smt_extn_support) {
    *smt_idx = FW_VI_MAC_CMD_SMTID_G
          (be32_to_cpu(c.op_to_viid));
   } else {





    if (CHELSIO_CHIP_VERSION(adap->params.chip) <=
             CHELSIO_T5)
     *smt_idx = (viid & FW_VIID_VIN_M) << 1;
    else
     *smt_idx = (viid & FW_VIID_VIN_M);
   }
  }
 }
 return ret;
}
