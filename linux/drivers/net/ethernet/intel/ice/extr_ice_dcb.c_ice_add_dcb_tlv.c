
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_lldp_org_tlv {int dummy; } ;
struct ice_dcbx_cfg {int dummy; } ;






 int ice_add_ieee_app_pri_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_add_ieee_ets_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_add_ieee_etsrec_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ice_add_ieee_pfc_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;

__attribute__((used)) static void
ice_add_dcb_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg,
  u16 tlvid)
{
 switch (tlvid) {
 case 130:
  ice_add_ieee_ets_tlv(tlv, dcbcfg);
  break;
 case 129:
  ice_add_ieee_etsrec_tlv(tlv, dcbcfg);
  break;
 case 128:
  ice_add_ieee_pfc_tlv(tlv, dcbcfg);
  break;
 case 131:
  ice_add_ieee_app_pri_tlv(tlv, dcbcfg);
  break;
 default:
  break;
 }
}
