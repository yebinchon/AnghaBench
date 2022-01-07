
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ice_lldp_org_tlv {int ouisubtype; } ;
struct ice_dcbx_cfg {int dummy; } ;




 int ICE_LLDP_TLV_OUI_M ;
 int ICE_LLDP_TLV_OUI_S ;
 int ice_parse_cee_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_parse_ieee_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ntohl (int ) ;

__attribute__((used)) static void
ice_parse_org_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
{
 u32 ouisubtype;
 u32 oui;

 ouisubtype = ntohl(tlv->ouisubtype);
 oui = ((ouisubtype & ICE_LLDP_TLV_OUI_M) >> ICE_LLDP_TLV_OUI_S);
 switch (oui) {
 case 128:
  ice_parse_ieee_tlv(tlv, dcbcfg);
  break;
 case 129:
  ice_parse_cee_tlv(tlv, dcbcfg);
  break;
 default:
  break;
 }
}
