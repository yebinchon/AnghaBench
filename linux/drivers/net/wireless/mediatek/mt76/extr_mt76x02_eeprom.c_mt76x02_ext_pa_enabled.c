
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt76x02_dev {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int MT_EE_NIC_CONF_0 ;
 int MT_EE_NIC_CONF_0_PA_INT_2G ;
 int MT_EE_NIC_CONF_0_PA_INT_5G ;
 int NL80211_BAND_5GHZ ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;

bool mt76x02_ext_pa_enabled(struct mt76x02_dev *dev, enum nl80211_band band)
{
 u16 conf0 = mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_0);

 if (band == NL80211_BAND_5GHZ)
  return !(conf0 & MT_EE_NIC_CONF_0_PA_INT_5G);
 else
  return !(conf0 & MT_EE_NIC_CONF_0_PA_INT_2G);
}
