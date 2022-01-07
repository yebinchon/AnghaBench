
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct mwifiex_bssdescriptor {TYPE_1__* bcn_wpa_ie; } ;
struct ie_body {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 scalar_t__ MWIFIEX_OUI_NOT_PRESENT ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_GTK_OUI_OFFSET ;
 scalar_t__ has_vendor_hdr (TYPE_1__*,int ) ;
 scalar_t__ mwifiex_search_oui_in_ie (struct ie_body*,scalar_t__*) ;
 scalar_t__** mwifiex_wpa_oui ;

__attribute__((used)) static u8
mwifiex_is_wpa_oui_present(struct mwifiex_bssdescriptor *bss_desc, u32 cipher)
{
 u8 *oui;
 struct ie_body *iebody;
 u8 ret = MWIFIEX_OUI_NOT_PRESENT;

 if (has_vendor_hdr(bss_desc->bcn_wpa_ie, WLAN_EID_VENDOR_SPECIFIC)) {
  iebody = (struct ie_body *)((u8 *)bss_desc->bcn_wpa_ie->data +
         WPA_GTK_OUI_OFFSET);
  oui = &mwifiex_wpa_oui[cipher][0];
  ret = mwifiex_search_oui_in_ie(iebody, oui);
  if (ret)
   return ret;
 }
 return ret;
}
