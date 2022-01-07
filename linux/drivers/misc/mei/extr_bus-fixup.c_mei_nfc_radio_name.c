
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_nfc_if_version {scalar_t__ vendor_id; scalar_t__ radio_type; } ;


 scalar_t__ MEI_NFC_VENDOR_INSIDE ;
 scalar_t__ MEI_NFC_VENDOR_INSIDE_UREAD ;
 scalar_t__ MEI_NFC_VENDOR_NXP ;
 scalar_t__ MEI_NFC_VENDOR_NXP_PN544 ;

__attribute__((used)) static const char *mei_nfc_radio_name(struct mei_nfc_if_version *ver)
{

 if (ver->vendor_id == MEI_NFC_VENDOR_INSIDE) {
  if (ver->radio_type == MEI_NFC_VENDOR_INSIDE_UREAD)
   return "microread";
 }

 if (ver->vendor_id == MEI_NFC_VENDOR_NXP) {
  if (ver->radio_type == MEI_NFC_VENDOR_NXP_PN544)
   return "pn544";
 }

 return ((void*)0);
}
