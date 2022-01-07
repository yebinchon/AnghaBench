
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9300_eeprom {int dummy; } ;
typedef struct ar9300_eeprom const u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int COMP_HDR_LEN ;
 int EEPROM ;


 struct ar9300_eeprom* ar9003_eeprom_struct_find_by_id (int) ;
 int ar9300_uncompress_block (struct ath_hw*,struct ar9300_eeprom const*,int,struct ar9300_eeprom const*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int,...) ;
 int memcpy (struct ar9300_eeprom const*,struct ar9300_eeprom const*,int) ;

__attribute__((used)) static int ar9300_compress_decision(struct ath_hw *ah,
        int it,
        int code,
        int reference,
        u8 *mptr,
        u8 *word, int length, int mdata_size)
{
 struct ath_common *common = ath9k_hw_common(ah);
 const struct ar9300_eeprom *eep = ((void*)0);

 switch (code) {
 case 128:
  if (length != mdata_size) {
   ath_dbg(common, EEPROM,
    "EEPROM structure size mismatch memory=%d eeprom=%d\n",
    mdata_size, length);
   return -1;
  }
  memcpy(mptr, word + COMP_HDR_LEN, length);
  ath_dbg(common, EEPROM,
   "restored eeprom %d: uncompressed, length %d\n",
   it, length);
  break;
 case 129:
  if (reference != 0) {
   eep = ar9003_eeprom_struct_find_by_id(reference);
   if (eep == ((void*)0)) {
    ath_dbg(common, EEPROM,
     "can't find reference eeprom struct %d\n",
     reference);
    return -1;
   }
   memcpy(mptr, eep, mdata_size);
  }
  ath_dbg(common, EEPROM,
   "restore eeprom %d: block, reference %d, length %d\n",
   it, reference, length);
  ar9300_uncompress_block(ah, mptr, mdata_size,
     (word + COMP_HDR_LEN), length);
  break;
 default:
  ath_dbg(common, EEPROM, "unknown compression code %d\n", code);
  return -1;
 }
 return 0;
}
