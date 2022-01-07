
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct emac_instance {int dummy; } ;


 int EMAC_FTR_EMAC4 ;
 unsigned int EMAC_TRTR_SHIFT ;
 unsigned int EMAC_TRTR_SHIFT_EMAC4 ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;

__attribute__((used)) static inline u32 emac_calc_trtr(struct emac_instance *dev, unsigned int size)
{
 if (emac_has_feature(dev, EMAC_FTR_EMAC4))
  return ((size >> 6) - 1) << EMAC_TRTR_SHIFT_EMAC4;
 else
  return ((size >> 6) - 1) << EMAC_TRTR_SHIFT;
}
