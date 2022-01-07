
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_lldp_org_tlv {int* tlvinfo; int ouisubtype; int typelen; } ;
struct ice_dcb_ets_cfg {int maxtcs; scalar_t__ willing; } ;
struct ice_dcbx_cfg {struct ice_dcb_ets_cfg etscfg; } ;


 int BIT (int ) ;
 int ICE_IEEE_8021QAZ_OUI ;
 int ICE_IEEE_ETS_MAXTC_M ;
 int ICE_IEEE_ETS_TLV_LEN ;
 int ICE_IEEE_ETS_WILLING_S ;
 int ICE_IEEE_SUBTYPE_ETS_CFG ;
 int ICE_LLDP_TLV_OUI_S ;
 int ICE_LLDP_TLV_TYPE_S ;
 int ICE_TLV_TYPE_ORG ;
 int htonl (int) ;
 int htons (int) ;
 int ice_add_ieee_ets_common_tlv (int*,struct ice_dcb_ets_cfg*) ;

__attribute__((used)) static void
ice_add_ieee_ets_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
{
 struct ice_dcb_ets_cfg *etscfg;
 u8 *buf = tlv->tlvinfo;
 u8 maxtcwilling = 0;
 u32 ouisubtype;
 u16 typelen;

 typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) |
     ICE_IEEE_ETS_TLV_LEN);
 tlv->typelen = htons(typelen);

 ouisubtype = ((ICE_IEEE_8021QAZ_OUI << ICE_LLDP_TLV_OUI_S) |
        ICE_IEEE_SUBTYPE_ETS_CFG);
 tlv->ouisubtype = htonl(ouisubtype);
 etscfg = &dcbcfg->etscfg;
 if (etscfg->willing)
  maxtcwilling = BIT(ICE_IEEE_ETS_WILLING_S);
 maxtcwilling |= etscfg->maxtcs & ICE_IEEE_ETS_MAXTC_M;
 buf[0] = maxtcwilling;


 ice_add_ieee_ets_common_tlv(&buf[1], etscfg);
}
