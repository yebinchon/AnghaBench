
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RNDIS_WLAN_KEY_MGMT_802_1X ;
 int RNDIS_WLAN_KEY_MGMT_NONE ;
 int RNDIS_WLAN_KEY_MGMT_PSK ;



__attribute__((used)) static int rndis_akm_suite_to_key_mgmt(u32 akm_suite)
{
 switch (akm_suite) {
 default:
  return RNDIS_WLAN_KEY_MGMT_NONE;
 case 129:
  return RNDIS_WLAN_KEY_MGMT_802_1X;
 case 128:
  return RNDIS_WLAN_KEY_MGMT_PSK;
 }
}
