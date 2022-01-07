
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct rocker_tlv {int dummy; } ;
struct rocker_port {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {int phy_address; int autoneg; int duplex; int speed; int port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EIO ;
 int PORT_TP ;
 size_t ROCKER_TLV_CMD_INFO ;
 int ROCKER_TLV_CMD_MAX ;
 size_t ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG ;
 size_t ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_MAX ;
 size_t ROCKER_TLV_CMD_PORT_SETTINGS_SPEED ;
 int TP ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int rocker_tlv_get_u32 (struct rocker_tlv const*) ;
 scalar_t__ rocker_tlv_get_u8 (struct rocker_tlv const*) ;
 int rocker_tlv_parse_desc (struct rocker_tlv const**,int ,struct rocker_desc_info const*) ;
 int rocker_tlv_parse_nested (struct rocker_tlv const**,int ,struct rocker_tlv const*) ;
 int supported ;

__attribute__((used)) static int
rocker_cmd_get_port_settings_ethtool_proc(const struct rocker_port *rocker_port,
       const struct rocker_desc_info *desc_info,
       void *priv)
{
 struct ethtool_link_ksettings *ecmd = priv;
 const struct rocker_tlv *attrs[ROCKER_TLV_CMD_MAX + 1];
 const struct rocker_tlv *info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_MAX + 1];
 u32 speed;
 u8 duplex;
 u8 autoneg;

 rocker_tlv_parse_desc(attrs, ROCKER_TLV_CMD_MAX, desc_info);
 if (!attrs[ROCKER_TLV_CMD_INFO])
  return -EIO;

 rocker_tlv_parse_nested(info_attrs, ROCKER_TLV_CMD_PORT_SETTINGS_MAX,
    attrs[ROCKER_TLV_CMD_INFO]);
 if (!info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_SPEED] ||
     !info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX] ||
     !info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG])
  return -EIO;

 speed = rocker_tlv_get_u32(info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_SPEED]);
 duplex = rocker_tlv_get_u8(info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_DUPLEX]);
 autoneg = rocker_tlv_get_u8(info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_AUTONEG]);

 ethtool_link_ksettings_zero_link_mode(ecmd, supported);
 ethtool_link_ksettings_add_link_mode(ecmd, supported, TP);

 ecmd->base.phy_address = 0xff;
 ecmd->base.port = PORT_TP;
 ecmd->base.speed = speed;
 ecmd->base.duplex = duplex ? DUPLEX_FULL : DUPLEX_HALF;
 ecmd->base.autoneg = autoneg ? AUTONEG_ENABLE : AUTONEG_DISABLE;

 return 0;
}
