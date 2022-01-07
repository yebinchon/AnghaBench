
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_pagesize; int nvram_size; void* nvram_jedecnum; } ;


 scalar_t__ ASIC_REV_5762 ;
 int ATMEL_AT24C02_CHIP_SIZE ;
 int ATMEL_AT24C512_CHIP_SIZE ;
 int AUTOSENSE_DEVID ;
 int AUTOSENSE_DEVID_MASK ;
 int AUTOSENSE_SIZE_IN_MB ;
 int FLASH ;
 void* JEDEC_ATMEL ;
 void* JEDEC_MACRONIX ;
 void* JEDEC_ST ;
 int NO_NVRAM ;
 int NO_NVRAM_ADDR_TRANS ;
 int NVRAM_AUTOSENSE_STATUS ;
 int NVRAM_BUFFERED ;
 int NVRAM_CFG1 ;
 int NVRAM_CFG1_5752VENDOR_MASK ;
 int NVRAM_CFG1_5762VENDOR_MASK ;
 int NVRAM_CFG1_COMPAT_BYPASS ;
 int TG3_EEPROM_MAGIC ;
 int TG3_EEPROM_MAGIC_FW ;
 int TG3_EEPROM_MAGIC_FW_MSK ;
 void* TG3_NVRAM_SIZE_128KB ;
 void* TG3_NVRAM_SIZE_1MB ;
 void* TG3_NVRAM_SIZE_256KB ;
 void* TG3_NVRAM_SIZE_512KB ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_nvram_get_pagesize (struct tg3*,int) ;
 scalar_t__ tg3_nvram_read (struct tg3*,int ,int*) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_get_5720_nvram_info(struct tg3 *tp)
{
 u32 nvcfg1, nvmpinstrp, nv_status;

 nvcfg1 = tr32(NVRAM_CFG1);
 nvmpinstrp = nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK;

 if (tg3_asic_rev(tp) == ASIC_REV_5762) {
  if (!(nvcfg1 & NVRAM_CFG1_5762VENDOR_MASK)) {
   tg3_flag_set(tp, NO_NVRAM);
   return;
  }

  switch (nvmpinstrp) {
  case 132:
  case 130:
  case 129:
  case 128:
  case 131:
   tp->nvram_pagesize = 4096;
   tp->nvram_jedecnum = JEDEC_MACRONIX;
   tg3_flag_set(tp, NVRAM_BUFFERED);
   tg3_flag_set(tp, NO_NVRAM_ADDR_TRANS);
   tg3_flag_set(tp, FLASH);
   nv_status = tr32(NVRAM_AUTOSENSE_STATUS);
   tp->nvram_size =
    (1 << (nv_status >> AUTOSENSE_DEVID &
      AUTOSENSE_DEVID_MASK)
     << AUTOSENSE_SIZE_IN_MB);
   return;

  case 134:
   nvmpinstrp = 136;
   break;
  case 133:
   nvmpinstrp = 135;
   break;
  case 141:



   nvmpinstrp = 137;
   break;
  }
 }

 switch (nvmpinstrp) {
 case 136:
 case 135:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);

  nvcfg1 &= ~NVRAM_CFG1_COMPAT_BYPASS;
  tw32(NVRAM_CFG1, nvcfg1);
  if (nvmpinstrp == 136)
   tp->nvram_pagesize = ATMEL_AT24C512_CHIP_SIZE;
  else
   tp->nvram_pagesize = ATMEL_AT24C02_CHIP_SIZE;
  return;
 case 150:
 case 165:
 case 164:
 case 149:
 case 163:
 case 162:
 case 148:
 case 161:
 case 160:
 case 147:
 case 159:
 case 166:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);

  switch (nvmpinstrp) {
  case 149:
  case 163:
  case 162:
   tp->nvram_size = TG3_NVRAM_SIZE_256KB;
   break;
  case 148:
  case 161:
  case 160:
   tp->nvram_size = TG3_NVRAM_SIZE_512KB;
   break;
  case 147:
  case 159:
   tp->nvram_size = TG3_NVRAM_SIZE_1MB;
   break;
  default:
   if (tg3_asic_rev(tp) != ASIC_REV_5762)
    tp->nvram_size = TG3_NVRAM_SIZE_128KB;
   break;
  }
  break;
 case 146:
 case 142:
 case 158:
 case 154:
 case 145:
 case 141:
 case 157:
 case 153:
 case 144:
 case 140:
 case 156:
 case 152:
 case 143:
 case 139:
 case 155:
 case 151:
 case 138:
 case 137:
  tp->nvram_jedecnum = JEDEC_ST;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);

  switch (nvmpinstrp) {
  case 145:
  case 141:
  case 157:
  case 153:
   tp->nvram_size = TG3_NVRAM_SIZE_256KB;
   break;
  case 144:
  case 140:
  case 156:
  case 152:
   tp->nvram_size = TG3_NVRAM_SIZE_512KB;
   break;
  case 143:
  case 139:
  case 155:
  case 151:
   tp->nvram_size = TG3_NVRAM_SIZE_1MB;
   break;
  default:
   if (tg3_asic_rev(tp) != ASIC_REV_5762)
    tp->nvram_size = TG3_NVRAM_SIZE_128KB;
   break;
  }
  break;
 default:
  tg3_flag_set(tp, NO_NVRAM);
  return;
 }

 tg3_nvram_get_pagesize(tp, nvcfg1);
 if (tp->nvram_pagesize != 264 && tp->nvram_pagesize != 528)
  tg3_flag_set(tp, NO_NVRAM_ADDR_TRANS);

 if (tg3_asic_rev(tp) == ASIC_REV_5762) {
  u32 val;

  if (tg3_nvram_read(tp, 0, &val))
   return;

  if (val != TG3_EEPROM_MAGIC &&
      (val & TG3_EEPROM_MAGIC_FW_MSK) != TG3_EEPROM_MAGIC_FW)
   tg3_flag_set(tp, NO_NVRAM);
 }
}
