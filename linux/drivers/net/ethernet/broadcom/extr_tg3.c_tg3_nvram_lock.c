
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {scalar_t__ nvram_lock_cnt; } ;


 int ENODEV ;
 int NVRAM ;
 int NVRAM_SWARB ;
 int SWARB_GNT1 ;
 int SWARB_REQ_CLR1 ;
 int SWARB_REQ_SET1 ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tr32 (int ) ;
 int tw32 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_nvram_lock(struct tg3 *tp)
{
 if (tg3_flag(tp, NVRAM)) {
  int i;

  if (tp->nvram_lock_cnt == 0) {
   tw32(NVRAM_SWARB, SWARB_REQ_SET1);
   for (i = 0; i < 8000; i++) {
    if (tr32(NVRAM_SWARB) & SWARB_GNT1)
     break;
    udelay(20);
   }
   if (i == 8000) {
    tw32(NVRAM_SWARB, SWARB_REQ_CLR1);
    return -ENODEV;
   }
  }
  tp->nvram_lock_cnt++;
 }
 return 0;
}
