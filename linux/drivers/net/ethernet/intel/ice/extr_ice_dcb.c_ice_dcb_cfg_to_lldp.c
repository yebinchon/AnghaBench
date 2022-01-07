
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_lldp_org_tlv {int typelen; } ;
struct ice_dcbx_cfg {int dummy; } ;


 int ICE_LLDPDU_SIZE ;
 int ICE_LLDP_TLV_LEN_M ;
 int ICE_LLDP_TLV_LEN_S ;
 int ICE_TLV_ID_END_OF_LLDPPDU ;
 int ICE_TLV_ID_START ;
 int ice_add_dcb_tlv (struct ice_lldp_org_tlv*,struct ice_dcbx_cfg*,int ) ;
 int ntohs (int ) ;

__attribute__((used)) static void
ice_dcb_cfg_to_lldp(u8 *lldpmib, u16 *miblen, struct ice_dcbx_cfg *dcbcfg)
{
 u16 len, offset = 0, tlvid = ICE_TLV_ID_START;
 struct ice_lldp_org_tlv *tlv;
 u16 typelen;

 tlv = (struct ice_lldp_org_tlv *)lldpmib;
 while (1) {
  ice_add_dcb_tlv(tlv, dcbcfg, tlvid++);
  typelen = ntohs(tlv->typelen);
  len = (typelen & ICE_LLDP_TLV_LEN_M) >> ICE_LLDP_TLV_LEN_S;
  if (len)
   offset += len + 2;

  if (tlvid >= ICE_TLV_ID_END_OF_LLDPPDU ||
      offset > ICE_LLDPDU_SIZE)
   break;

  if (len)
   tlv = (struct ice_lldp_org_tlv *)
    ((char *)tlv + sizeof(tlv->typelen) + len);
 }
 *miblen = offset;
}
