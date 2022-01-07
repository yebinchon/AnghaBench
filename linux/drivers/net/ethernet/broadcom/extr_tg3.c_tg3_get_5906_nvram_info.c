
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int nvram_pagesize; int nvram_jedecnum; } ;


 int ATMEL_AT24C512_CHIP_SIZE ;
 int JEDEC_ATMEL ;
 int NVRAM_BUFFERED ;
 int tg3_flag_set (struct tg3*,int ) ;

__attribute__((used)) static void tg3_get_5906_nvram_info(struct tg3 *tp)
{
 tp->nvram_jedecnum = JEDEC_ATMEL;
 tg3_flag_set(tp, NVRAM_BUFFERED);
 tp->nvram_pagesize = ATMEL_AT24C512_CHIP_SIZE;
}
