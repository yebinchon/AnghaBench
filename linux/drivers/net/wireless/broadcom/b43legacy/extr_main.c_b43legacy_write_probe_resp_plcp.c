
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ieee80211_rate {int hw_value; } ;
struct b43legacy_wldev {TYPE_1__* wl; } ;
struct b43legacy_plcp_hdr4 {scalar_t__ data; } ;
typedef int __le16 ;
struct TYPE_2__ {int vif; int hw; } ;


 int B43legacy_SHM_SHARED ;
 scalar_t__ FCS_LEN ;
 int NL80211_BAND_2GHZ ;
 int b43legacy_generate_plcp_hdr (struct b43legacy_plcp_hdr4*,scalar_t__,int ) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,scalar_t__,int) ;
 int ieee80211_generic_frame_duration (int ,int ,int ,scalar_t__,struct ieee80211_rate*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static void b43legacy_write_probe_resp_plcp(struct b43legacy_wldev *dev,
         u16 shm_offset, u16 size,
         struct ieee80211_rate *rate)
{
 struct b43legacy_plcp_hdr4 plcp;
 u32 tmp;
 __le16 dur;

 plcp.data = 0;
 b43legacy_generate_plcp_hdr(&plcp, size + FCS_LEN, rate->hw_value);
 dur = ieee80211_generic_frame_duration(dev->wl->hw,
            dev->wl->vif,
            NL80211_BAND_2GHZ,
            size,
            rate);

 tmp = le32_to_cpu(plcp.data);
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, shm_offset,
         tmp & 0xFFFF);
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, shm_offset + 2,
         tmp >> 16);
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, shm_offset + 6,
         le16_to_cpu(dur));
}
