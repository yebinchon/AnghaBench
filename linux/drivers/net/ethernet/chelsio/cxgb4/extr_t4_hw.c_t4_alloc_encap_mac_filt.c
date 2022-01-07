
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct fw_vi_mac_vni {int valid_to_idx; void* vni_mask_pkd; void* lookup_type_to_vni; int macaddr_mask; int macaddr; } ;
struct TYPE_2__ {struct fw_vi_mac_vni* exact_vni; } ;
struct fw_vi_mac_cmd {void* freemacs_to_len16; void* op_to_viid; TYPE_1__ u; } ;
struct adapter {int mbox; } ;
typedef int c ;


 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_VI_MAC_ADD_MAC ;
 int FW_VI_MAC_CMD ;
 int FW_VI_MAC_CMD_DIP_HIT_V (int ) ;
 int FW_VI_MAC_CMD_ENTRY_TYPE_V (int ) ;
 int FW_VI_MAC_CMD_IDX_G (int ) ;
 int FW_VI_MAC_CMD_IDX_V (int ) ;
 int FW_VI_MAC_CMD_LOOKUP_TYPE_V (int ) ;
 int FW_VI_MAC_CMD_VALID_F ;
 int FW_VI_MAC_CMD_VIID_V (unsigned int) ;
 int FW_VI_MAC_CMD_VNI_MASK_V (unsigned int) ;
 int FW_VI_MAC_CMD_VNI_V (unsigned int) ;
 int FW_VI_MAC_TYPE_EXACTMAC_VNI ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int const*,int) ;
 int memset (struct fw_vi_mac_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,int ,struct fw_vi_mac_cmd*,int,struct fw_vi_mac_cmd*,int) ;

int t4_alloc_encap_mac_filt(struct adapter *adap, unsigned int viid,
       const u8 *addr, const u8 *mask, unsigned int vni,
       unsigned int vni_mask, u8 dip_hit, u8 lookup_type,
       bool sleep_ok)
{
 struct fw_vi_mac_cmd c;
 struct fw_vi_mac_vni *p = c.u.exact_vni;
 int ret = 0;
 u32 val;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_MAC_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
       FW_VI_MAC_CMD_VIID_V(viid));
 val = FW_CMD_LEN16_V(1) |
       FW_VI_MAC_CMD_ENTRY_TYPE_V(FW_VI_MAC_TYPE_EXACTMAC_VNI);
 c.freemacs_to_len16 = cpu_to_be32(val);
 p->valid_to_idx = cpu_to_be16(FW_VI_MAC_CMD_VALID_F |
          FW_VI_MAC_CMD_IDX_V(FW_VI_MAC_ADD_MAC));
 memcpy(p->macaddr, addr, sizeof(p->macaddr));
 memcpy(p->macaddr_mask, mask, sizeof(p->macaddr_mask));

 p->lookup_type_to_vni =
  cpu_to_be32(FW_VI_MAC_CMD_VNI_V(vni) |
       FW_VI_MAC_CMD_DIP_HIT_V(dip_hit) |
       FW_VI_MAC_CMD_LOOKUP_TYPE_V(lookup_type));
 p->vni_mask_pkd = cpu_to_be32(FW_VI_MAC_CMD_VNI_MASK_V(vni_mask));
 ret = t4_wr_mbox_meat(adap, adap->mbox, &c, sizeof(c), &c, sleep_ok);
 if (ret == 0)
  ret = FW_VI_MAC_CMD_IDX_G(be16_to_cpu(p->valid_to_idx));
 return ret;
}
