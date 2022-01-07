
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_tx_rate {int idx; int count; int flags; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int EINVAL ;
 int FIELD_GET (int ,int) ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_80_MHZ_WIDTH ;
 int IEEE80211_TX_RC_GREEN_FIELD ;
 int IEEE80211_TX_RC_MCS ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int IEEE80211_TX_RC_VHT_MCS ;
 int MT_RXWI_RATE_BW ;
 int MT_RXWI_RATE_INDEX ;
 int MT_RXWI_RATE_PHY ;
 int MT_RXWI_RATE_SGI ;
 int NL80211_BAND_2GHZ ;

__attribute__((used)) static int
mt76x02_mac_process_tx_rate(struct ieee80211_tx_rate *txrate, u16 rate,
       enum nl80211_band band)
{
 u8 idx = FIELD_GET(MT_RXWI_RATE_INDEX, rate);

 txrate->idx = 0;
 txrate->flags = 0;
 txrate->count = 1;

 switch (FIELD_GET(MT_RXWI_RATE_PHY, rate)) {
 case 129:
  if (band == NL80211_BAND_2GHZ)
   idx += 4;

  txrate->idx = idx;
  return 0;
 case 132:
  if (idx >= 8)
   idx -= 8;

  txrate->idx = idx;
  return 0;
 case 130:
  txrate->flags |= IEEE80211_TX_RC_GREEN_FIELD;

 case 131:
  txrate->flags |= IEEE80211_TX_RC_MCS;
  txrate->idx = idx;
  break;
 case 128:
  txrate->flags |= IEEE80211_TX_RC_VHT_MCS;
  txrate->idx = idx;
  break;
 default:
  return -EINVAL;
 }

 switch (FIELD_GET(MT_RXWI_RATE_BW, rate)) {
 case 135:
  break;
 case 134:
  txrate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
  break;
 case 133:
  txrate->flags |= IEEE80211_TX_RC_80_MHZ_WIDTH;
  break;
 default:
  return -EINVAL;
 }

 if (rate & MT_RXWI_RATE_SGI)
  txrate->flags |= IEEE80211_TX_RC_SHORT_GI;

 return 0;
}
