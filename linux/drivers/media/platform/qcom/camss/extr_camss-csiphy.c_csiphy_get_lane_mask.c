
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int pos; } ;
struct csiphy_lanes_cfg {int num_data; TYPE_2__* data; TYPE_1__ clk; } ;
struct TYPE_4__ {int pos; } ;



__attribute__((used)) static u8 csiphy_get_lane_mask(struct csiphy_lanes_cfg *lane_cfg)
{
 u8 lane_mask;
 int i;

 lane_mask = 1 << lane_cfg->clk.pos;

 for (i = 0; i < lane_cfg->num_data; i++)
  lane_mask |= 1 << lane_cfg->data[i].pos;

 return lane_mask;
}
