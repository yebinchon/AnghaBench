
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_tlv {int dummy; } ;
struct rocker_port {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {int tbl_id; int priority; } ;
struct ofdpa_flow_tbl_entry {int cmd; TYPE_1__ key; int cookie; } ;


 int EMSGSIZE ;
 int ENOTSUPP ;






 int ROCKER_TLV_CMD_INFO ;
 int ROCKER_TLV_CMD_TYPE ;
 int ROCKER_TLV_OF_DPA_COOKIE ;
 int ROCKER_TLV_OF_DPA_HARDTIME ;
 int ROCKER_TLV_OF_DPA_PRIORITY ;
 int ROCKER_TLV_OF_DPA_TABLE_ID ;
 int ofdpa_cmd_flow_tbl_add_acl (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ;
 int ofdpa_cmd_flow_tbl_add_bridge (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ;
 int ofdpa_cmd_flow_tbl_add_ig_port (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ;
 int ofdpa_cmd_flow_tbl_add_term_mac (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ;
 int ofdpa_cmd_flow_tbl_add_ucast_routing (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ;
 int ofdpa_cmd_flow_tbl_add_vlan (struct rocker_desc_info*,struct ofdpa_flow_tbl_entry const*) ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u64 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int ofdpa_cmd_flow_tbl_add(const struct rocker_port *rocker_port,
      struct rocker_desc_info *desc_info,
      void *priv)
{
 const struct ofdpa_flow_tbl_entry *entry = priv;
 struct rocker_tlv *cmd_info;
 int err = 0;

 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_CMD_TYPE, entry->cmd))
  return -EMSGSIZE;
 cmd_info = rocker_tlv_nest_start(desc_info, ROCKER_TLV_CMD_INFO);
 if (!cmd_info)
  return -EMSGSIZE;
 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_OF_DPA_TABLE_ID,
          entry->key.tbl_id))
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_PRIORITY,
          entry->key.priority))
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_HARDTIME, 0))
  return -EMSGSIZE;
 if (rocker_tlv_put_u64(desc_info, ROCKER_TLV_OF_DPA_COOKIE,
          entry->cookie))
  return -EMSGSIZE;

 switch (entry->key.tbl_id) {
 case 131:
  err = ofdpa_cmd_flow_tbl_add_ig_port(desc_info, entry);
  break;
 case 128:
  err = ofdpa_cmd_flow_tbl_add_vlan(desc_info, entry);
  break;
 case 130:
  err = ofdpa_cmd_flow_tbl_add_term_mac(desc_info, entry);
  break;
 case 129:
  err = ofdpa_cmd_flow_tbl_add_ucast_routing(desc_info, entry);
  break;
 case 132:
  err = ofdpa_cmd_flow_tbl_add_bridge(desc_info, entry);
  break;
 case 133:
  err = ofdpa_cmd_flow_tbl_add_acl(desc_info, entry);
  break;
 default:
  err = -ENOTSUPP;
  break;
 }

 if (err)
  return err;

 rocker_tlv_nest_end(desc_info, cmd_info);

 return 0;
}
