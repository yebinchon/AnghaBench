
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
 int tg3_flag_set (struct tg3*,int ) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_get_5787_nvram_info(struct tg3 *tp)
{
 u32 nvcfg1;

 nvcfg1 = tr32(NVRAM_CFG1);

 switch (nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK) {
 case 130:
 case 131:
 case 128:
 case 129:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tp->nvram_pagesize = ATMEL_AT24C512_CHIP_SIZE;

  nvcfg1 &= ~NVRAM_CFG1_COMPAT_BYPASS;
  tw32(NVRAM_CFG1, nvcfg1);
  break;
 case 138:
 case 134:
 case 133:
 case 132:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  tp->nvram_pagesize = 264;
  break;
 case 137:
 case 136:
 case 135:
  tp->nvram_jedecnum = JEDEC_ST;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  tp->nvram_pagesize = 256;
  break;
 }
}
