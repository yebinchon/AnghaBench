
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ const WLAN_EID_RSN ;

__attribute__((used)) static bool ath6kl_is_rsn_ie(const u8 *pos)
{
 return pos[0] == WLAN_EID_RSN;
}
