
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;





 int CPMU_CLCK_ORIDE_MAC_ORIDE_EN ;
 int TG3_CPMU_CLCK_ORIDE ;
 int TG3_CPMU_CLCK_ORIDE_ENABLE ;
 int TG3_CPMU_MAC_ORIDE_ENABLE ;
 int tg3_asic_rev (struct tg3*) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_restore_clk(struct tg3 *tp)
{
 u32 val;

 switch (tg3_asic_rev(tp)) {
 case 130:
  val = tr32(TG3_CPMU_CLCK_ORIDE_ENABLE);
  tw32(TG3_CPMU_CLCK_ORIDE_ENABLE,
       val & ~TG3_CPMU_MAC_ORIDE_ENABLE);
  break;

 case 129:
 case 128:
  val = tr32(TG3_CPMU_CLCK_ORIDE);
  tw32(TG3_CPMU_CLCK_ORIDE, val & ~CPMU_CLCK_ORIDE_MAC_ORIDE_EN);
  break;

 default:
  return;
 }
}
