
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ath_hw {int ah_flags; TYPE_1__* eep_ops; int eeprom; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int (* get_eepmisc ) (struct ath_hw*) ;} ;


 int AH_NO_EEP_SWAP ;
 int AR5416_EEPMISC_BIG_ENDIAN ;
 scalar_t__ AR5416_EEPROM_MAGIC ;
 int AR5416_EEPROM_MAGIC_OFFSET ;
 int EEPROM ;
 int EINVAL ;
 int EIO ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_nvram_read (struct ath_hw*,int ,scalar_t__*) ;
 scalar_t__ ath9k_hw_use_flash (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_err (struct ath_common*,char*,...) ;
 int ath_info (struct ath_common*,char*) ;
 int stub1 (struct ath_hw*) ;
 scalar_t__ swab16 (scalar_t__) ;

int ath9k_hw_nvram_swap_data(struct ath_hw *ah, bool *swap_needed, int size)
{
 u16 magic;
 u16 *eepdata;
 int i;
 bool needs_byteswap = 0;
 struct ath_common *common = ath9k_hw_common(ah);

 if (!ath9k_hw_nvram_read(ah, AR5416_EEPROM_MAGIC_OFFSET, &magic)) {
  ath_err(common, "Reading Magic # failed\n");
  return -EIO;
 }

 if (swab16(magic) == AR5416_EEPROM_MAGIC) {
  needs_byteswap = 1;
  ath_dbg(common, EEPROM,
   "EEPROM needs byte-swapping to correct endianness.\n");
 } else if (magic != AR5416_EEPROM_MAGIC) {
  if (ath9k_hw_use_flash(ah)) {
   ath_dbg(common, EEPROM,
    "Ignoring invalid EEPROM magic (0x%04x).\n",
    magic);
  } else {
   ath_err(common,
    "Invalid EEPROM magic (0x%04x).\n", magic);
   return -EINVAL;
  }
 }

 if (needs_byteswap) {
  if (ah->ah_flags & AH_NO_EEP_SWAP) {
   ath_info(common,
     "Ignoring endianness difference in EEPROM magic bytes.\n");
  } else {
   eepdata = (u16 *)(&ah->eeprom);

   for (i = 0; i < size; i++)
    eepdata[i] = swab16(eepdata[i]);
  }
 }

 if (ah->eep_ops->get_eepmisc(ah) & AR5416_EEPMISC_BIG_ENDIAN) {
  *swap_needed = 1;
  ath_dbg(common, EEPROM,
   "Big Endian EEPROM detected according to EEPMISC register.\n");
 } else {
  *swap_needed = 0;
 }

 return 0;
}
