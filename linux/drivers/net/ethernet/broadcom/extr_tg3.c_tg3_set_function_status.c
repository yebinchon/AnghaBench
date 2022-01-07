
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int pci_fn; } ;


 scalar_t__ ASIC_REV_5717 ;
 scalar_t__ ASIC_REV_5719 ;
 int TG3_APE_GPIO_MSG ;
 int TG3_APE_GPIO_MSG_SHIFT ;
 int TG3_CPMU_DRV_STATUS ;
 int TG3_GPIO_MSG_MASK ;
 int tg3_ape_read32 (struct tg3*,int ) ;
 int tg3_ape_write32 (struct tg3*,int ,int) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static inline u32 tg3_set_function_status(struct tg3 *tp, u32 newstat)
{
 u32 status, shift;

 if (tg3_asic_rev(tp) == ASIC_REV_5717 ||
     tg3_asic_rev(tp) == ASIC_REV_5719)
  status = tg3_ape_read32(tp, TG3_APE_GPIO_MSG);
 else
  status = tr32(TG3_CPMU_DRV_STATUS);

 shift = TG3_APE_GPIO_MSG_SHIFT + 4 * tp->pci_fn;
 status &= ~(TG3_GPIO_MSG_MASK << shift);
 status |= (newstat << shift);

 if (tg3_asic_rev(tp) == ASIC_REV_5717 ||
     tg3_asic_rev(tp) == ASIC_REV_5719)
  tg3_ape_write32(tp, TG3_APE_GPIO_MSG, status);
 else
  tw32(TG3_CPMU_DRV_STATUS, status);

 return status >> TG3_APE_GPIO_MSG_SHIFT;
}
