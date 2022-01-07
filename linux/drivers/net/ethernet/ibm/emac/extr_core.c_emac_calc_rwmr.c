
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct emac_instance {int dummy; } ;


 int EMAC_FTR_EMAC4 ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;

__attribute__((used)) static inline u32 emac_calc_rwmr(struct emac_instance *dev,
     unsigned int low, unsigned int high)
{
 if (emac_has_feature(dev, EMAC_FTR_EMAC4))
  return (low << 22) | ( (high & 0x3ff) << 6);
 else
  return (low << 23) | ( (high & 0x1ff) << 7);
}
