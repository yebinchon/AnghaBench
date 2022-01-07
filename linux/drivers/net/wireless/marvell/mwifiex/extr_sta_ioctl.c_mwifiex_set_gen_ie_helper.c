
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wps_oui ;
typedef int wpa_oui ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int session_enable; } ;
struct mwifiex_private {int gen_ie_buf_len; scalar_t__ gen_ie_buf; int adapter; TYPE_1__ wps; } ;
struct ieee_types_vendor_header {int len; scalar_t__ element_id; int oui; } ;
struct ieee_types_header {int dummy; } ;


 int MSG ;
 scalar_t__ WLAN_EID_BSS_AC_ACCESS_DELAY ;
 scalar_t__ WLAN_EID_RSN ;
 scalar_t__ WLAN_EID_VENDOR_SPECIFIC ;
 int memcmp (int *,int const*,int) ;
 int memcpy (scalar_t__,int*,int) ;
 int mwifiex_dbg (int ,int ,char*) ;
 int mwifiex_set_wapi_ie (struct mwifiex_private*,int*,int) ;
 int mwifiex_set_wpa_ie (struct mwifiex_private*,int*,int) ;
 int mwifiex_set_wps_ie (struct mwifiex_private*,int*,int) ;

__attribute__((used)) static int
mwifiex_set_gen_ie_helper(struct mwifiex_private *priv, u8 *ie_data_ptr,
     u16 ie_len)
{
 struct ieee_types_vendor_header *pvendor_ie;
 const u8 wpa_oui[] = { 0x00, 0x50, 0xf2, 0x01 };
 const u8 wps_oui[] = { 0x00, 0x50, 0xf2, 0x04 };
 u16 unparsed_len = ie_len, cur_ie_len;


 if (!ie_len) {
  priv->gen_ie_buf_len = 0;
  priv->wps.session_enable = 0;
  return 0;
 } else if (!ie_data_ptr ||
     ie_len <= sizeof(struct ieee_types_header)) {
  return -1;
 }
 pvendor_ie = (struct ieee_types_vendor_header *) ie_data_ptr;

 while (pvendor_ie) {
  cur_ie_len = pvendor_ie->len + sizeof(struct ieee_types_header);

  if (pvendor_ie->element_id == WLAN_EID_RSN) {

   mwifiex_set_wpa_ie(priv, (u8 *)pvendor_ie, cur_ie_len);
   priv->wps.session_enable = 0;
   goto next_ie;
  }

  if (pvendor_ie->element_id == WLAN_EID_BSS_AC_ACCESS_DELAY) {

   mwifiex_set_wapi_ie(priv, (u8 *)pvendor_ie,
         cur_ie_len);
   goto next_ie;
  }

  if (pvendor_ie->element_id == WLAN_EID_VENDOR_SPECIFIC) {



   if (!memcmp(&pvendor_ie->oui, wpa_oui,
        sizeof(wpa_oui))) {


    mwifiex_set_wpa_ie(priv, (u8 *)pvendor_ie,
         cur_ie_len);
    priv->wps.session_enable = 0;
    goto next_ie;
   }

   if (!memcmp(&pvendor_ie->oui, wps_oui,
        sizeof(wps_oui))) {



    priv->wps.session_enable = 1;
    mwifiex_dbg(priv->adapter, MSG,
         "WPS Session Enabled.\n");
    mwifiex_set_wps_ie(priv, (u8 *)pvendor_ie,
         cur_ie_len);
    goto next_ie;
   }
  }






  if (cur_ie_len <
      (sizeof(priv->gen_ie_buf) - priv->gen_ie_buf_len)) {



   memcpy(priv->gen_ie_buf + priv->gen_ie_buf_len,
          (u8 *)pvendor_ie, cur_ie_len);



   priv->gen_ie_buf_len += cur_ie_len;
  }

next_ie:
  unparsed_len -= cur_ie_len;

  if (unparsed_len <= sizeof(struct ieee_types_header))
   pvendor_ie = ((void*)0);
  else
   pvendor_ie = (struct ieee_types_vendor_header *)
    (((u8 *)pvendor_ie) + cur_ie_len);
 }

 return 0;
}
