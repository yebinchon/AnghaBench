
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_port {int pport; } ;
struct rocker_desc_info {int dummy; } ;


 int EMSGSIZE ;
 int ETH_ALEN ;
 int ROCKER_TLV_CMD_INFO ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_PPORT ;
 int ROCKER_TLV_CMD_TYPE ;
 int ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 scalar_t__ rocker_tlv_put (struct rocker_desc_info*,int ,int ,unsigned char const*) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int
rocker_cmd_set_port_settings_macaddr_prep(const struct rocker_port *rocker_port,
       struct rocker_desc_info *desc_info,
       void *priv)
{
 const unsigned char *macaddr = priv;
 struct rocker_tlv *cmd_info;

 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_CMD_TYPE,
          ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS))
  return -EMSGSIZE;
 cmd_info = rocker_tlv_nest_start(desc_info, ROCKER_TLV_CMD_INFO);
 if (!cmd_info)
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_CMD_PORT_SETTINGS_PPORT,
          rocker_port->pport))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR,
      ETH_ALEN, macaddr))
  return -EMSGSIZE;
 rocker_tlv_nest_end(desc_info, cmd_info);
 return 0;
}
