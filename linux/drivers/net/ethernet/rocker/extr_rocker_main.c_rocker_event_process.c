
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;


 int EIO ;
 int EOPNOTSUPP ;
 size_t ROCKER_TLV_EVENT_INFO ;
 int ROCKER_TLV_EVENT_MAX ;
 size_t ROCKER_TLV_EVENT_TYPE ;


 int rocker_event_link_change (struct rocker const*,struct rocker_tlv const*) ;
 int rocker_event_mac_vlan_seen (struct rocker const*,struct rocker_tlv const*) ;
 int rocker_tlv_get_u16 (struct rocker_tlv const*) ;
 int rocker_tlv_parse_desc (struct rocker_tlv const**,int ,struct rocker_desc_info const*) ;

__attribute__((used)) static int rocker_event_process(const struct rocker *rocker,
    const struct rocker_desc_info *desc_info)
{
 const struct rocker_tlv *attrs[ROCKER_TLV_EVENT_MAX + 1];
 const struct rocker_tlv *info;
 u16 type;

 rocker_tlv_parse_desc(attrs, ROCKER_TLV_EVENT_MAX, desc_info);
 if (!attrs[ROCKER_TLV_EVENT_TYPE] ||
     !attrs[ROCKER_TLV_EVENT_INFO])
  return -EIO;

 type = rocker_tlv_get_u16(attrs[ROCKER_TLV_EVENT_TYPE]);
 info = attrs[ROCKER_TLV_EVENT_INFO];

 switch (type) {
 case 129:
  return rocker_event_link_change(rocker, info);
 case 128:
  return rocker_event_mac_vlan_seen(rocker, info);
 }

 return -EOPNOTSUPP;
}
