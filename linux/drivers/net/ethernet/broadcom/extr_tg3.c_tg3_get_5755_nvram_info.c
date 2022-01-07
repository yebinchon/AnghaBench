
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_pagesize; int nvram_size; int nvram_jedecnum; } ;


 int FLASH ;







 int JEDEC_ATMEL ;
 int JEDEC_ST ;
 int NVRAM_BUFFERED ;
 int NVRAM_CFG1 ;
 int NVRAM_CFG1_5752VENDOR_MASK ;
 int PROTECTED_NVRAM ;
 int TG3_NVRAM_SIZE_128KB ;
 int TG3_NVRAM_SIZE_256KB ;
 int TG3_NVRAM_SIZE_512KB ;
 int TG3_NVRAM_SIZE_64KB ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tr32 (int ) ;

__attribute__((used)) static void tg3_get_5755_nvram_info(struct tg3 *tp)
{
 u32 nvcfg1, protect = 0;

 nvcfg1 = tr32(NVRAM_CFG1);


 if (nvcfg1 & (1 << 27)) {
  tg3_flag_set(tp, PROTECTED_NVRAM);
  protect = 1;
 }

 nvcfg1 &= NVRAM_CFG1_5752VENDOR_MASK;
 switch (nvcfg1) {
 case 131:
 case 130:
 case 129:
 case 128:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  tp->nvram_pagesize = 264;
  if (nvcfg1 == 131 ||
      nvcfg1 == 128)
   tp->nvram_size = (protect ? 0x3e200 :
       TG3_NVRAM_SIZE_512KB);
  else if (nvcfg1 == 130)
   tp->nvram_size = (protect ? 0x1f200 :
       TG3_NVRAM_SIZE_256KB);
  else
   tp->nvram_size = (protect ? 0x1f200 :
       TG3_NVRAM_SIZE_128KB);
  break;
 case 134:
 case 133:
 case 132:
  tp->nvram_jedecnum = JEDEC_ST;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);
  tp->nvram_pagesize = 256;
  if (nvcfg1 == 134)
   tp->nvram_size = (protect ?
       TG3_NVRAM_SIZE_64KB :
       TG3_NVRAM_SIZE_128KB);
  else if (nvcfg1 == 133)
   tp->nvram_size = (protect ?
       TG3_NVRAM_SIZE_64KB :
       TG3_NVRAM_SIZE_256KB);
  else
   tp->nvram_size = (protect ?
       TG3_NVRAM_SIZE_128KB :
       TG3_NVRAM_SIZE_512KB);
  break;
 }
}
