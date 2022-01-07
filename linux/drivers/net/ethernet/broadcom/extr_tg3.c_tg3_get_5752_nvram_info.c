
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_pagesize; void* nvram_jedecnum; } ;


 int ATMEL_AT24C512_CHIP_SIZE ;
 int FLASH ;






 void* JEDEC_ATMEL ;
 void* JEDEC_ST ;
 int NVRAM_BUFFERED ;
 int NVRAM_CFG1 ;
 int NVRAM_CFG1_5752VENDOR_MASK ;
 int NVRAM_CFG1_COMPAT_BYPASS ;
 int PROTECTED_NVRAM ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_nvram_get_pagesize (struct tg3*,int) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_get_5752_nvram_info(struct tg3 *tp)
{
 u32 nvcfg1;

 nvcfg1 = tr32(NVRAM_CFG1);


 if (nvcfg1 & (1 << 27))
  tg3_flag_set(tp, PROTECTED_NVRAM);

 switch (nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK) {
 case 132:
 case 133:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  break;
 case 131:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  break;
 case 130:
 case 129:
 case 128:
  tp->nvram_jedecnum = JEDEC_ST;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  break;
 }

 if (tg3_flag(tp, FLASH)) {
  tg3_nvram_get_pagesize(tp, nvcfg1);
 } else {

  tp->nvram_pagesize = ATMEL_AT24C512_CHIP_SIZE;

  nvcfg1 &= ~NVRAM_CFG1_COMPAT_BYPASS;
  tw32(NVRAM_CFG1, nvcfg1);
 }
}
