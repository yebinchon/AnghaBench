
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_pagesize; } ;
 int NVRAM_CFG1_5752PAGE_SIZE_MASK ;

__attribute__((used)) static void tg3_nvram_get_pagesize(struct tg3 *tp, u32 nvmcfg1)
{
 switch (nvmcfg1 & NVRAM_CFG1_5752PAGE_SIZE_MASK) {
 case 133:
  tp->nvram_pagesize = 256;
  break;
 case 129:
  tp->nvram_pagesize = 512;
  break;
 case 134:
  tp->nvram_pagesize = 1024;
  break;
 case 131:
  tp->nvram_pagesize = 2048;
  break;
 case 130:
  tp->nvram_pagesize = 4096;
  break;
 case 132:
  tp->nvram_pagesize = 264;
  break;
 case 128:
  tp->nvram_pagesize = 528;
  break;
 }
}
