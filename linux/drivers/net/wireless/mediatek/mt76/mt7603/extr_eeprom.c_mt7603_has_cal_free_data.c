
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7603_dev {int dummy; } ;


 size_t MT_EE_CP_FT_VERSION ;
 size_t MT_EE_TEMP_SENSOR_CAL ;
 int MT_EE_TX_POWER_0_START_2G ;
 int MT_EE_TX_POWER_1_START_2G ;
 size_t MT_EE_XTAL_FREQ_OFFSET ;
 size_t MT_EE_XTAL_WF_RFCAL ;
 scalar_t__ get_unaligned_le16 (int *) ;

__attribute__((used)) static bool
mt7603_has_cal_free_data(struct mt7603_dev *dev, u8 *efuse)
{
 if (!efuse[MT_EE_TEMP_SENSOR_CAL])
  return 0;

 if (get_unaligned_le16(efuse + MT_EE_TX_POWER_0_START_2G) == 0)
  return 0;

 if (get_unaligned_le16(efuse + MT_EE_TX_POWER_1_START_2G) == 0)
  return 0;

 if (!efuse[MT_EE_CP_FT_VERSION])
  return 0;

 if (!efuse[MT_EE_XTAL_FREQ_OFFSET])
  return 0;

 if (!efuse[MT_EE_XTAL_WF_RFCAL])
  return 0;

 return 1;
}
