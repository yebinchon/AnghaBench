
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; unsigned int len; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath_common {int keymap; } ;
struct ath5k_rx_status {int rs_status; scalar_t__ rs_keyix; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_RXERR_DECRYPT ;
 scalar_t__ AR5K_RXKEYIX_INVALID ;
 unsigned int RX_FLAG_DECRYPTED ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 unsigned int ieee80211_hdrlen (int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static unsigned int
ath5k_rx_decrypted(struct ath5k_hw *ah, struct sk_buff *skb,
     struct ath5k_rx_status *rs)
{
 struct ath_common *common = ath5k_hw_common(ah);
 struct ieee80211_hdr *hdr = (void *)skb->data;
 unsigned int keyix, hlen;

 if (!(rs->rs_status & AR5K_RXERR_DECRYPT) &&
   rs->rs_keyix != AR5K_RXKEYIX_INVALID)
  return RX_FLAG_DECRYPTED;




 hlen = ieee80211_hdrlen(hdr->frame_control);
 if (ieee80211_has_protected(hdr->frame_control) &&
     !(rs->rs_status & AR5K_RXERR_DECRYPT) &&
     skb->len >= hlen + 4) {
  keyix = skb->data[hlen + 3] >> 6;

  if (test_bit(keyix, common->keymap))
   return RX_FLAG_DECRYPTED;
 }

 return 0;
}
