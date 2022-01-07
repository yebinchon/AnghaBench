
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi_session_set_property_pkt {int dummy; } ;


 scalar_t__ HFI_VERSION_1XX ;
 scalar_t__ HFI_VERSION_3XX ;
 scalar_t__ hfi_ver ;
 int pkt_session_set_property_1x (struct hfi_session_set_property_pkt*,void*,int ,void*) ;
 int pkt_session_set_property_3xx (struct hfi_session_set_property_pkt*,void*,int ,void*) ;
 int pkt_session_set_property_4xx (struct hfi_session_set_property_pkt*,void*,int ,void*) ;

int pkt_session_set_property(struct hfi_session_set_property_pkt *pkt,
        void *cookie, u32 ptype, void *pdata)
{
 if (hfi_ver == HFI_VERSION_1XX)
  return pkt_session_set_property_1x(pkt, cookie, ptype, pdata);

 if (hfi_ver == HFI_VERSION_3XX)
  return pkt_session_set_property_3xx(pkt, cookie, ptype, pdata);

 return pkt_session_set_property_4xx(pkt, cookie, ptype, pdata);
}
