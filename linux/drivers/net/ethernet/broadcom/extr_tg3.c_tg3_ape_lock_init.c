
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int pci_fn; } ;


 int APE_LOCK_GRANT_DRIVER ;
 scalar_t__ ASIC_REV_5761 ;
 int TG3_APE_LOCK_GPIO ;
 int TG3_APE_LOCK_GRANT ;




 int TG3_APE_PER_LOCK_GRANT ;
 int tg3_ape_write32 (struct tg3*,int,int) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;

__attribute__((used)) static void tg3_ape_lock_init(struct tg3 *tp)
{
 int i;
 u32 regbase, bit;

 if (tg3_asic_rev(tp) == ASIC_REV_5761)
  regbase = TG3_APE_LOCK_GRANT;
 else
  regbase = TG3_APE_PER_LOCK_GRANT;


 for (i = 131; i <= TG3_APE_LOCK_GPIO; i++) {
  switch (i) {
  case 131:
  case 130:
  case 129:
  case 128:
   bit = APE_LOCK_GRANT_DRIVER;
   break;
  default:
   if (!tp->pci_fn)
    bit = APE_LOCK_GRANT_DRIVER;
   else
    bit = 1 << tp->pci_fn;
  }
  tg3_ape_write32(tp, regbase + 4 * i, bit);
 }

}
