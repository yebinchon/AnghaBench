
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;


 int IGC_COLD_SHIFT ;
 int IGC_COLLISION_DISTANCE ;
 int IGC_TCTL ;
 int IGC_TCTL_COLD ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igc_config_collision_dist(struct igc_hw *hw)
{
 u32 tctl;

 tctl = rd32(IGC_TCTL);

 tctl &= ~IGC_TCTL_COLD;
 tctl |= IGC_COLLISION_DISTANCE << IGC_COLD_SHIFT;

 wr32(IGC_TCTL, tctl);
 wrfl();
}
