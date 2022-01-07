
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int const WLAN_EID_VENDOR_SPECIFIC ;

__attribute__((used)) static bool ath6kl_is_wpa_ie(const u8 *pos)
{
 return pos[0] == WLAN_EID_VENDOR_SPECIFIC && pos[1] >= 4 &&
  pos[2] == 0x00 && pos[3] == 0x50 &&
  pos[4] == 0xf2 && pos[5] == 0x01;
}
