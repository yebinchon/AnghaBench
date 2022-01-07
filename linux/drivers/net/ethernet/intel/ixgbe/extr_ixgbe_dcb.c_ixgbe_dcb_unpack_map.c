
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ixgbe_dcb_config {int dummy; } ;


 size_t MAX_USER_PRIORITY ;
 size_t ixgbe_dcb_get_tc_from_up (struct ixgbe_dcb_config*,int,size_t) ;

void ixgbe_dcb_unpack_map(struct ixgbe_dcb_config *cfg, int direction, u8 *map)
{
 u8 up;

 for (up = 0; up < MAX_USER_PRIORITY; up++)
  map[up] = ixgbe_dcb_get_tc_from_up(cfg, direction, up);
}
