
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_classify_cmd_header {int cmd_general_data; int func_id; int client_id; } ;
struct bnx2x_raw_obj {int func_id; int cl_id; } ;
struct bnx2x_vlan_mac_obj {struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;


 int ETH_CLASSIFY_CMD_HEADER_IS_ADD ;
 int ETH_CLASSIFY_CMD_HEADER_OPCODE_SHIFT ;
 int bnx2x_vlan_mac_get_rx_tx_flag (struct bnx2x_vlan_mac_obj*) ;

__attribute__((used)) static inline void bnx2x_vlan_mac_set_cmd_hdr_e2(struct bnx2x *bp,
 struct bnx2x_vlan_mac_obj *o, bool add, int opcode,
 struct eth_classify_cmd_header *hdr)
{
 struct bnx2x_raw_obj *raw = &o->raw;

 hdr->client_id = raw->cl_id;
 hdr->func_id = raw->func_id;


 hdr->cmd_general_data |=
  bnx2x_vlan_mac_get_rx_tx_flag(o);

 if (add)
  hdr->cmd_general_data |= ETH_CLASSIFY_CMD_HEADER_IS_ADD;

 hdr->cmd_general_data |=
  (opcode << ETH_CLASSIFY_CMD_HEADER_OPCODE_SHIFT);
}
