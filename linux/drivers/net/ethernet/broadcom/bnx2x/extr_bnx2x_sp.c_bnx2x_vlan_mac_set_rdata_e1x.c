
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mac_configuration_entry {int dummy; } ;
struct mac_configuration_cmd {int hdr; struct mac_configuration_entry* config_table; } ;
struct bnx2x_raw_obj {int cl_id; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,char*,int *,int ,int) ;
 int bnx2x_vlan_mac_set_cfg_entry_e1x (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int,int,int *,int ,struct mac_configuration_entry*) ;
 int bnx2x_vlan_mac_set_rdata_hdr_e1x (struct bnx2x*,struct bnx2x_vlan_mac_obj*,int,int,int *) ;

__attribute__((used)) static inline void bnx2x_vlan_mac_set_rdata_e1x(struct bnx2x *bp,
 struct bnx2x_vlan_mac_obj *o, int type, int cam_offset, bool add,
 u8 *mac, u16 vlan_id, int opcode, struct mac_configuration_cmd *config)
{
 struct mac_configuration_entry *cfg_entry = &config->config_table[0];
 struct bnx2x_raw_obj *raw = &o->raw;

 bnx2x_vlan_mac_set_rdata_hdr_e1x(bp, o, type, cam_offset,
      &config->hdr);
 bnx2x_vlan_mac_set_cfg_entry_e1x(bp, o, add, opcode, mac, vlan_id,
      cfg_entry);

 DP(BNX2X_MSG_SP, "%s MAC %pM CLID %d CAM offset %d\n",
    (add ? "setting" : "clearing"),
    mac, raw->cl_id, cam_offset);
}
