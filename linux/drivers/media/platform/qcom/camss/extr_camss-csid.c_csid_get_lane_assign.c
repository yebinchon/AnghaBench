
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct csiphy_lanes_cfg {int num_data; TYPE_1__* data; } ;
struct TYPE_2__ {int pos; } ;



__attribute__((used)) static u32 csid_get_lane_assign(struct csiphy_lanes_cfg *lane_cfg)
{
 u32 lane_assign = 0;
 int i;

 for (i = 0; i < lane_cfg->num_data; i++)
  lane_assign |= lane_cfg->data[i].pos << (i * 4);

 return lane_assign;
}
