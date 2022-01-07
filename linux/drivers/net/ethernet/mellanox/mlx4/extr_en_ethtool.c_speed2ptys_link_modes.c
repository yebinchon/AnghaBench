
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ speed; } ;


 int MLX4_LINK_MODES_SZ ;
 TYPE_1__* ptys2ethtool_map ;

__attribute__((used)) static u32 speed2ptys_link_modes(u32 speed)
{
 int i;
 u32 ptys_modes = 0;

 for (i = 0; i < MLX4_LINK_MODES_SZ; i++) {
  if (ptys2ethtool_map[i].speed == speed)
   ptys_modes |= 1 << i;
 }
 return ptys_modes;
}
