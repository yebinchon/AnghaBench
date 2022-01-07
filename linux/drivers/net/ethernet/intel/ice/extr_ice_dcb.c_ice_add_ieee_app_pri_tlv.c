
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct ice_lldp_org_tlv {size_t* tlvinfo; int typelen; int ouisubtype; } ;
struct ice_dcbx_cfg {scalar_t__ numapps; TYPE_1__* app; } ;
struct TYPE_2__ {int priority; int selector; int prot_id; } ;


 size_t ICE_DCBX_MAX_APPS ;
 int ICE_IEEE_8021QAZ_OUI ;
 size_t ICE_IEEE_APP_PRIO_S ;
 int ICE_IEEE_SUBTYPE_APP_PRI ;
 int ICE_LLDP_TLV_OUI_S ;
 size_t ICE_LLDP_TLV_TYPE_S ;
 size_t ICE_TLV_TYPE_ORG ;
 int htonl (int) ;
 int htons (size_t) ;

__attribute__((used)) static void
ice_add_ieee_app_pri_tlv(struct ice_lldp_org_tlv *tlv,
    struct ice_dcbx_cfg *dcbcfg)
{
 u16 typelen, len, offset = 0;
 u8 priority, selector, i = 0;
 u8 *buf = tlv->tlvinfo;
 u32 ouisubtype;


 if (dcbcfg->numapps == 0)
  return;
 ouisubtype = ((ICE_IEEE_8021QAZ_OUI << ICE_LLDP_TLV_OUI_S) |
        ICE_IEEE_SUBTYPE_APP_PRI);
 tlv->ouisubtype = htonl(ouisubtype);


 offset++;
 while (i < dcbcfg->numapps) {
  priority = dcbcfg->app[i].priority & 0x7;
  selector = dcbcfg->app[i].selector & 0x7;
  buf[offset] = (priority << ICE_IEEE_APP_PRIO_S) | selector;
  buf[offset + 1] = (dcbcfg->app[i].prot_id >> 0x8) & 0xFF;
  buf[offset + 2] = dcbcfg->app[i].prot_id & 0xFF;

  offset += 3;
  i++;
  if (i >= ICE_DCBX_MAX_APPS)
   break;
 }

 len = sizeof(tlv->ouisubtype) + 1 + (i * 3);
 typelen = ((ICE_TLV_TYPE_ORG << ICE_LLDP_TLV_TYPE_S) | (len & 0x1FF));
 tlv->typelen = htons(typelen);
}
