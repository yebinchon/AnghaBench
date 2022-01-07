
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_wcid {int rx_check_pn; int * rx_key_pn; } ;
struct mt76_dev {int dummy; } ;
struct TYPE_2__ {int pn; } ;
struct ieee80211_key_seq {TYPE_1__ ccmp; } ;
struct ieee80211_key_conf {scalar_t__ cipher; } ;


 int IEEE80211_NUM_TIDS ;
 scalar_t__ WLAN_CIPHER_SUITE_CCMP ;
 int ieee80211_get_key_rx_seq (struct ieee80211_key_conf*,int,struct ieee80211_key_seq*) ;
 int memcpy (int ,int ,int) ;

void mt76_wcid_key_setup(struct mt76_dev *dev, struct mt76_wcid *wcid,
    struct ieee80211_key_conf *key)
{
 struct ieee80211_key_seq seq;
 int i;

 wcid->rx_check_pn = 0;

 if (!key)
  return;

 if (key->cipher != WLAN_CIPHER_SUITE_CCMP)
  return;

 wcid->rx_check_pn = 1;
 for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
  ieee80211_get_key_rx_seq(key, i, &seq);
  memcpy(wcid->rx_key_pn[i], seq.ccmp.pn, sizeof(seq.ccmp.pn));
 }
}
