
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcms_c_info {int hw; } ;
struct brcms_bss_cfg {scalar_t__ SSID_len; int * SSID; } ;


 int IEEE80211_MAX_SSID_LEN ;
 int M_SSID ;
 int M_SSIDLEN ;
 int brcms_b_write_shm (int ,int ,int ) ;
 int brcms_c_copyto_shm (struct brcms_c_info*,int ,int *,int) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
brcms_c_shm_ssid_upd(struct brcms_c_info *wlc, struct brcms_bss_cfg *cfg)
{
 u8 *ssidptr = cfg->SSID;
 u16 base = M_SSID;
 u8 ssidbuf[IEEE80211_MAX_SSID_LEN];


 memset(ssidbuf, 0, IEEE80211_MAX_SSID_LEN);
 memcpy(ssidbuf, ssidptr, cfg->SSID_len);

 brcms_c_copyto_shm(wlc, base, ssidbuf, IEEE80211_MAX_SSID_LEN);
 brcms_b_write_shm(wlc->hw, M_SSIDLEN, (u16) cfg->SSID_len);
}
