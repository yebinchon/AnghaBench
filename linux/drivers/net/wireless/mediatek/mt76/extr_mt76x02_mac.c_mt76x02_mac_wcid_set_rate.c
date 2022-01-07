
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_dev {int dummy; } ;
struct mt76_wcid {int tx_info; } ;
struct ieee80211_tx_rate {int dummy; } ;
typedef int s8 ;
typedef int __le16 ;


 int FIELD_PREP (int ,int ) ;
 int MT_WCID_TX_INFO_NSS ;
 int MT_WCID_TX_INFO_RATE ;
 int MT_WCID_TX_INFO_SET ;
 int MT_WCID_TX_INFO_TXPWR_ADJ ;
 int mt76x02_mac_tx_rate_val (struct mt76x02_dev*,struct ieee80211_tx_rate const*,int *) ;
 int mt76x02_tx_get_max_txpwr_adj (struct mt76x02_dev*,struct ieee80211_tx_rate const*) ;

void mt76x02_mac_wcid_set_rate(struct mt76x02_dev *dev, struct mt76_wcid *wcid,
          const struct ieee80211_tx_rate *rate)
{
 s8 max_txpwr_adj = mt76x02_tx_get_max_txpwr_adj(dev, rate);
 __le16 rateval;
 u32 tx_info;
 s8 nss;

 rateval = mt76x02_mac_tx_rate_val(dev, rate, &nss);
 tx_info = FIELD_PREP(MT_WCID_TX_INFO_RATE, rateval) |
    FIELD_PREP(MT_WCID_TX_INFO_NSS, nss) |
    FIELD_PREP(MT_WCID_TX_INFO_TXPWR_ADJ, max_txpwr_adj) |
    MT_WCID_TX_INFO_SET;
 wcid->tx_info = tx_info;
}
