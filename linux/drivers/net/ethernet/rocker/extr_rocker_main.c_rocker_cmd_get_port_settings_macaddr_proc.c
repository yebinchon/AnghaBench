
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_port {int dummy; } ;
struct rocker_desc_info {int dummy; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ ETH_ALEN ;
 size_t ROCKER_TLV_CMD_INFO ;
 int ROCKER_TLV_CMD_MAX ;
 size_t ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR ;
 int ROCKER_TLV_CMD_PORT_SETTINGS_MAX ;
 int ether_addr_copy (unsigned char*,int ) ;
 int rocker_tlv_data (struct rocker_tlv const*) ;
 scalar_t__ rocker_tlv_len (struct rocker_tlv const*) ;
 int rocker_tlv_parse_desc (struct rocker_tlv const**,int ,struct rocker_desc_info const*) ;
 int rocker_tlv_parse_nested (struct rocker_tlv const**,int ,struct rocker_tlv const*) ;

__attribute__((used)) static int
rocker_cmd_get_port_settings_macaddr_proc(const struct rocker_port *rocker_port,
       const struct rocker_desc_info *desc_info,
       void *priv)
{
 unsigned char *macaddr = priv;
 const struct rocker_tlv *attrs[ROCKER_TLV_CMD_MAX + 1];
 const struct rocker_tlv *info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_MAX + 1];
 const struct rocker_tlv *attr;

 rocker_tlv_parse_desc(attrs, ROCKER_TLV_CMD_MAX, desc_info);
 if (!attrs[ROCKER_TLV_CMD_INFO])
  return -EIO;

 rocker_tlv_parse_nested(info_attrs, ROCKER_TLV_CMD_PORT_SETTINGS_MAX,
    attrs[ROCKER_TLV_CMD_INFO]);
 attr = info_attrs[ROCKER_TLV_CMD_PORT_SETTINGS_MACADDR];
 if (!attr)
  return -EIO;

 if (rocker_tlv_len(attr) != ETH_ALEN)
  return -EINVAL;

 ether_addr_copy(macaddr, rocker_tlv_data(attr));
 return 0;
}
