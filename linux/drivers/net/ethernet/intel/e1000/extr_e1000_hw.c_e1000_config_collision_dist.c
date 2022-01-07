
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ mac_type; } ;


 int E1000_COLD_SHIFT ;
 int E1000_COLLISION_DISTANCE ;
 int E1000_COLLISION_DISTANCE_82542 ;
 int E1000_TCTL_COLD ;
 int E1000_WRITE_FLUSH () ;
 int TCTL ;
 scalar_t__ e1000_82543 ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

void e1000_config_collision_dist(struct e1000_hw *hw)
{
 u32 tctl, coll_dist;

 if (hw->mac_type < e1000_82543)
  coll_dist = E1000_COLLISION_DISTANCE_82542;
 else
  coll_dist = E1000_COLLISION_DISTANCE;

 tctl = er32(TCTL);

 tctl &= ~E1000_TCTL_COLD;
 tctl |= coll_dist << E1000_COLD_SHIFT;

 ew32(TCTL, tctl);
 E1000_WRITE_FLUSH();
}
