
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ath_hw {scalar_t__ eeprom_blob; TYPE_2__* dev; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct ath9k_platform_data {int use_eeprom; } ;
struct TYPE_4__ {struct ath9k_platform_data* platform_data; } ;
struct TYPE_3__ {int (* eeprom_read ) (struct ath_common*,int ,int *) ;} ;


 int EEPROM ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_nvram_read_firmware (scalar_t__,int ,int *) ;
 int ath9k_hw_nvram_read_pdata (struct ath9k_platform_data*,int ,int *) ;
 int ath_dbg (struct ath_common*,int ,char*,int ) ;
 int stub1 (struct ath_common*,int ,int *) ;

bool ath9k_hw_nvram_read(struct ath_hw *ah, u32 off, u16 *data)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_platform_data *pdata = ah->dev->platform_data;
 bool ret;

 if (ah->eeprom_blob)
  ret = ath9k_hw_nvram_read_firmware(ah->eeprom_blob, off, data);
 else if (pdata && !pdata->use_eeprom)
  ret = ath9k_hw_nvram_read_pdata(pdata, off, data);
 else
  ret = common->bus_ops->eeprom_read(common, off, data);

 if (!ret)
  ath_dbg(common, EEPROM,
   "unable to read eeprom region at offset %u\n", off);

 return ret;
}
