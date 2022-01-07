
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int willing; void* pfccap; void* pfcena; } ;
struct ice_dcbx_cfg {TYPE_1__ pfc; } ;
struct ice_cee_feat_tlv {void** tlvinfo; int en_will_err; } ;


 int ICE_CEE_FEAT_TLV_WILLING_M ;

__attribute__((used)) static void
ice_parse_cee_pfccfg_tlv(struct ice_cee_feat_tlv *tlv,
    struct ice_dcbx_cfg *dcbcfg)
{
 u8 *buf = tlv->tlvinfo;

 if (tlv->en_will_err & ICE_CEE_FEAT_TLV_WILLING_M)
  dcbcfg->pfc.willing = 1;






 dcbcfg->pfc.pfcena = buf[0];
 dcbcfg->pfc.pfccap = buf[1];
}
