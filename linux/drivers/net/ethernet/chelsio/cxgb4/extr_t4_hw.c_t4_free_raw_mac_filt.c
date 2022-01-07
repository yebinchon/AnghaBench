
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fw_vi_mac_raw {int * data1m; int * data1; int data0m_pkd; void* data0_pkd; void* raw_idx_pkd; } ;
struct TYPE_2__ {struct fw_vi_mac_raw raw; } ;
struct fw_vi_mac_cmd {void* freemacs_to_len16; void* op_to_viid; TYPE_1__ u; } ;
struct adapter {int mbox; } ;
typedef int c ;


 int DATALKPTYPE_M ;
 int DATALKPTYPE_V (int ) ;
 int DATAPORTNUM_M ;
 int DATAPORTNUM_V (int ) ;
 int ETH_ALEN ;
 int FW_CMD_EXEC_V (int ) ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_VI_MAC_CMD ;
 int FW_VI_MAC_CMD_ENTRY_TYPE_V (int ) ;
 int FW_VI_MAC_CMD_FREEMACS_V (int ) ;
 int FW_VI_MAC_CMD_RAW_IDX_V (unsigned int) ;
 int FW_VI_MAC_CMD_VIID_V (unsigned int) ;
 int FW_VI_MAC_ID_BASED_FREE ;
 int FW_VI_MAC_TYPE_RAW ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int) ;
 int memcpy (int *,int const*,int ) ;
 int memset (struct fw_vi_mac_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*,int) ;

int t4_free_raw_mac_filt(struct adapter *adap, unsigned int viid,
    const u8 *addr, const u8 *mask, unsigned int idx,
    u8 lookup_type, u8 port_id, bool sleep_ok)
{
 struct fw_vi_mac_cmd c;
 struct fw_vi_mac_raw *p = &c.u.raw;
 u32 val;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_MAC_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
       FW_CMD_EXEC_V(0) |
       FW_VI_MAC_CMD_VIID_V(viid));
 val = FW_CMD_LEN16_V(1) |
       FW_VI_MAC_CMD_ENTRY_TYPE_V(FW_VI_MAC_TYPE_RAW);
 c.freemacs_to_len16 = cpu_to_be32(FW_VI_MAC_CMD_FREEMACS_V(0) |
       FW_CMD_LEN16_V(val));

 p->raw_idx_pkd = cpu_to_be32(FW_VI_MAC_CMD_RAW_IDX_V(idx) |
         FW_VI_MAC_ID_BASED_FREE);


 p->data0_pkd = cpu_to_be32(DATALKPTYPE_V(lookup_type) |
       DATAPORTNUM_V(port_id));

 p->data0m_pkd = cpu_to_be64(DATALKPTYPE_V(DATALKPTYPE_M) |
        DATAPORTNUM_V(DATAPORTNUM_M));


 memcpy((u8 *)&p->data1[0] + 2, addr, ETH_ALEN);
 memcpy((u8 *)&p->data1m[0] + 2, mask, ETH_ALEN);

 return t4_wr_mbox_meat(adap, adap->mbox, &c, sizeof(c), &c, sleep_ok);
}
