
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_pagesize; void* nvram_size; int nvram_jedecnum; } ;


 int FLASH ;
 int JEDEC_ATMEL ;
 int JEDEC_ST ;
 int NO_NVRAM_ADDR_TRANS ;
 int NVRAM_ADDR_LOCKOUT ;
 int NVRAM_BUFFERED ;
 int NVRAM_CFG1 ;
 int NVRAM_CFG1_5752VENDOR_MASK ;
 int PROTECTED_NVRAM ;
 void* TG3_NVRAM_SIZE_1MB ;
 void* TG3_NVRAM_SIZE_256KB ;
 void* TG3_NVRAM_SIZE_2MB ;
 void* TG3_NVRAM_SIZE_512KB ;
 int tg3_flag_set (struct tg3*,int ) ;
 void* tr32 (int ) ;

__attribute__((used)) static void tg3_get_5761_nvram_info(struct tg3 *tp)
{
 u32 nvcfg1, protect = 0;

 nvcfg1 = tr32(NVRAM_CFG1);


 if (nvcfg1 & (1 << 27)) {
  tg3_flag_set(tp, PROTECTED_NVRAM);
  protect = 1;
 }

 nvcfg1 &= NVRAM_CFG1_5752VENDOR_MASK;
 switch (nvcfg1) {
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  tg3_flag_set(tp, NO_NVRAM_ADDR_TRANS);
  tp->nvram_pagesize = 256;
  break;
 case 134:
 case 133:
 case 132:
 case 135:
 case 130:
 case 129:
 case 128:
 case 131:
  tp->nvram_jedecnum = JEDEC_ST;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  tp->nvram_pagesize = 256;
  break;
 }

 if (protect) {
  tp->nvram_size = tr32(NVRAM_ADDR_LOCKOUT);
 } else {
  switch (nvcfg1) {
  case 140:
  case 136:
  case 135:
  case 131:
   tp->nvram_size = TG3_NVRAM_SIZE_2MB;
   break;
  case 141:
  case 137:
  case 132:
  case 128:
   tp->nvram_size = TG3_NVRAM_SIZE_1MB;
   break;
  case 142:
  case 138:
  case 133:
  case 129:
   tp->nvram_size = TG3_NVRAM_SIZE_512KB;
   break;
  case 143:
  case 139:
  case 134:
  case 130:
   tp->nvram_size = TG3_NVRAM_SIZE_256KB;
   break;
  }
 }
}
