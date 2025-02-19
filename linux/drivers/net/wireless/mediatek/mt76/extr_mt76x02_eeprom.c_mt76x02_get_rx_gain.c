
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt76x02_dev {int dummy; } ;
typedef int s8 ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int MT_EE_LNA_GAIN ;
 int MT_EE_RSSI_OFFSET_2G_0 ;
 int MT_EE_RSSI_OFFSET_2G_1 ;
 int MT_EE_RSSI_OFFSET_5G_0 ;
 int MT_EE_RSSI_OFFSET_5G_1 ;
 int NL80211_BAND_2GHZ ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x02_field_valid (int) ;

void mt76x02_get_rx_gain(struct mt76x02_dev *dev, enum nl80211_band band,
    u16 *rssi_offset, s8 *lna_2g, s8 *lna_5g)
{
 u16 val;

 val = mt76x02_eeprom_get(dev, MT_EE_LNA_GAIN);
 *lna_2g = val & 0xff;
 lna_5g[0] = val >> 8;

 val = mt76x02_eeprom_get(dev, MT_EE_RSSI_OFFSET_2G_1);
 lna_5g[1] = val >> 8;

 val = mt76x02_eeprom_get(dev, MT_EE_RSSI_OFFSET_5G_1);
 lna_5g[2] = val >> 8;

 if (!mt76x02_field_valid(lna_5g[1]))
  lna_5g[1] = lna_5g[0];

 if (!mt76x02_field_valid(lna_5g[2]))
  lna_5g[2] = lna_5g[0];

 if (band == NL80211_BAND_2GHZ)
  *rssi_offset = mt76x02_eeprom_get(dev, MT_EE_RSSI_OFFSET_2G_0);
 else
  *rssi_offset = mt76x02_eeprom_get(dev, MT_EE_RSSI_OFFSET_5G_0);
}
