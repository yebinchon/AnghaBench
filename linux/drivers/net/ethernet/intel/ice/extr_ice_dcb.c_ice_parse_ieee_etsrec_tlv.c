
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_lldp_org_tlv {int * tlvinfo; } ;
struct ice_dcbx_cfg {int etsrec; } ;


 int ice_parse_ieee_ets_common_tlv (int *,int *) ;

__attribute__((used)) static void
ice_parse_ieee_etsrec_tlv(struct ice_lldp_org_tlv *tlv,
     struct ice_dcbx_cfg *dcbcfg)
{
 u8 *buf = tlv->tlvinfo;


 ice_parse_ieee_ets_common_tlv(&buf[1], &dcbcfg->etsrec);
}
