
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ice_lldp_org_tlv {int ouisubtype; } ;
struct ice_dcbx_cfg {int dummy; } ;






 int ICE_LLDP_TLV_SUBTYPE_M ;
 int ICE_LLDP_TLV_SUBTYPE_S ;
 int ice_parse_ieee_app_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_parse_ieee_etscfg_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_parse_ieee_etsrec_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_parse_ieee_pfccfg_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ntohl (int ) ;

__attribute__((used)) static void
ice_parse_ieee_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
{
 u32 ouisubtype;
 u8 subtype;

 ouisubtype = ntohl(tlv->ouisubtype);
 subtype = (u8)((ouisubtype & ICE_LLDP_TLV_SUBTYPE_M) >>
         ICE_LLDP_TLV_SUBTYPE_S);
 switch (subtype) {
 case 130:
  ice_parse_ieee_etscfg_tlv(tlv, dcbcfg);
  break;
 case 129:
  ice_parse_ieee_etsrec_tlv(tlv, dcbcfg);
  break;
 case 128:
  ice_parse_ieee_pfccfg_tlv(tlv, dcbcfg);
  break;
 case 131:
  ice_parse_ieee_app_tlv(tlv, dcbcfg);
  break;
 default:
  break;
 }
}
