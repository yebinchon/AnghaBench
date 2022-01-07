
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fw_vi_mac_exact {int macaddr; int valid_to_idx; } ;
struct TYPE_2__ {struct fw_vi_mac_exact* exact; } ;
struct fw_vi_mac_cmd {TYPE_1__ u; void* freemacs_to_len16; void* op_to_viid; } ;
struct adapter {int mbox; } ;
typedef int c ;


 int FW_CMD_EXEC_V (int ) ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_VI_MAC_CMD ;
 int FW_VI_MAC_CMD_ENTRY_TYPE_V (int ) ;
 int FW_VI_MAC_CMD_FREEMACS_V (int ) ;
 int FW_VI_MAC_CMD_IDX_V (int) ;
 int FW_VI_MAC_CMD_VALID_F ;
 int FW_VI_MAC_CMD_VIID_V (unsigned int) ;
 int FW_VI_MAC_TYPE_EXACTMAC ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int *,int) ;
 int memset (struct fw_vi_mac_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*,int) ;

int t4_free_encap_mac_filt(struct adapter *adap, unsigned int viid,
      int idx, bool sleep_ok)
{
 struct fw_vi_mac_exact *p;
 u8 addr[] = {0, 0, 0, 0, 0, 0};
 struct fw_vi_mac_cmd c;
 int ret = 0;
 u32 exact;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_MAC_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
       FW_CMD_EXEC_V(0) |
       FW_VI_MAC_CMD_VIID_V(viid));
 exact = FW_VI_MAC_CMD_ENTRY_TYPE_V(FW_VI_MAC_TYPE_EXACTMAC);
 c.freemacs_to_len16 = cpu_to_be32(FW_VI_MAC_CMD_FREEMACS_V(0) |
       exact |
       FW_CMD_LEN16_V(1));
 p = c.u.exact;
 p->valid_to_idx = cpu_to_be16(FW_VI_MAC_CMD_VALID_F |
          FW_VI_MAC_CMD_IDX_V(idx));
 memcpy(p->macaddr, addr, sizeof(p->macaddr));
 ret = t4_wr_mbox_meat(adap, adap->mbox, &c, sizeof(c), &c, sleep_ok);
 return ret;
}
