
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int* data; } ;
struct TYPE_4__ {TYPE_1__ eeprom; } ;
struct mt7615_dev {TYPE_2__ mt76; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int MT_EE_NIC_CONF_1 ;
 int MT_EE_NIC_CONF_TSSI_2G ;
 int MT_EE_NIC_CONF_TSSI_5G ;
 int NL80211_BAND_5GHZ ;

__attribute__((used)) static inline bool
mt7615_ext_pa_enabled(struct mt7615_dev *dev, enum nl80211_band band)
{
 u8 *eep = dev->mt76.eeprom.data;

 if (band == NL80211_BAND_5GHZ)
  return !(eep[MT_EE_NIC_CONF_1 + 1] & MT_EE_NIC_CONF_TSSI_5G);
 else
  return !(eep[MT_EE_NIC_CONF_1 + 1] & MT_EE_NIC_CONF_TSSI_2G);
}
