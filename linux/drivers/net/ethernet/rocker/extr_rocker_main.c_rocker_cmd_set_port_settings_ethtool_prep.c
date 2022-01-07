
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_tlv {int dummy; } ;
struct rocker_port {int pport; } ;
struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {int autoneg; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int EMSGSIZE ;
 int ROCKER_TLV_CMD_INFO ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_PPORT ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_SPEED ;
 int ROCKER_TLV_CMD_TYPE ;
 int ROCKER_TLV_CMD_TYPE_SET_PORT_SETTINGS ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u8 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int
rocker_cmd_set_port_settings_ethtool_prep(const struct rocker_port *rocker_port,
       struct rocker_desc_info *desc_info,
       void *priv)
{
 struct ethtool_link_ksettings *ecmd = priv;
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
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_CMD_PORT_SETTINGS_SPEED,
          ecmd->base.speed))
  return -EMSGSIZE;
 if (rocker_tlv_put_u8(desc_info, ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX,
         ecmd->base.duplex))
  return -EMSGSIZE;
 if (rocker_tlv_put_u8(desc_info, ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG,
         ecmd->base.autoneg))
  return -EMSGSIZE;
 rocker_tlv_nest_end(desc_info, cmd_info);
 return 0;
}
