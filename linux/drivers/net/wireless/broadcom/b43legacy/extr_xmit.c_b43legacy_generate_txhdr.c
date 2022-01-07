
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_tx_info {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;


 int generate_txhdr_fw3 (struct b43legacy_wldev*,struct b43legacy_txhdr_fw3*,unsigned char const*,unsigned int,struct ieee80211_tx_info*,int ) ;

int b43legacy_generate_txhdr(struct b43legacy_wldev *dev,
         u8 *txhdr,
         const unsigned char *fragment_data,
         unsigned int fragment_len,
         struct ieee80211_tx_info *info,
         u16 cookie)
{
 return generate_txhdr_fw3(dev, (struct b43legacy_txhdr_fw3 *)txhdr,
      fragment_data, fragment_len,
      info, cookie);
}
