
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int typelen ;
struct ice_lldp_org_tlv {int typelen; } ;
struct ice_dcbx_cfg {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ETH_HLEN ;
 int ICE_ERR_PARAM ;
 int ICE_LLDPDU_SIZE ;
 int ICE_LLDP_TLV_LEN_M ;
 int ICE_LLDP_TLV_LEN_S ;
 int ICE_LLDP_TLV_TYPE_M ;
 int ICE_LLDP_TLV_TYPE_S ;
 int ICE_TLV_TYPE_END ;

 int ice_parse_org_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*) ;
 int ntohs (int ) ;

__attribute__((used)) static enum ice_status
ice_lldp_to_dcb_cfg(u8 *lldpmib, struct ice_dcbx_cfg *dcbcfg)
{
 struct ice_lldp_org_tlv *tlv;
 enum ice_status ret = 0;
 u16 offset = 0;
 u16 typelen;
 u16 type;
 u16 len;

 if (!lldpmib || !dcbcfg)
  return ICE_ERR_PARAM;


 lldpmib += ETH_HLEN;
 tlv = (struct ice_lldp_org_tlv *)lldpmib;
 while (1) {
  typelen = ntohs(tlv->typelen);
  type = ((typelen & ICE_LLDP_TLV_TYPE_M) >> ICE_LLDP_TLV_TYPE_S);
  len = ((typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S);
  offset += sizeof(typelen) + len;


  if (type == ICE_TLV_TYPE_END || offset > ICE_LLDPDU_SIZE)
   break;

  switch (type) {
  case 128:
   ice_parse_org_tlv(tlv, dcbcfg);
   break;
  default:
   break;
  }


  tlv = (struct ice_lldp_org_tlv *)
        ((char *)tlv + sizeof(tlv->typelen) + len);
 }

 return ret;
}
