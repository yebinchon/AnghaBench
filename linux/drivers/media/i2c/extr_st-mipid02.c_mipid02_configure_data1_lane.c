
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_lane1_reg1; } ;
struct mipid02_dev {TYPE_1__ r; } ;


 int DATA_ENABLE ;

__attribute__((used)) static int mipid02_configure_data1_lane(struct mipid02_dev *bridge, int nb,
     bool are_lanes_swap, bool *polarities)
{
 bool are_pin_swap = are_lanes_swap ? polarities[1] : polarities[2];

 if (nb == 1 && !are_lanes_swap)
  return 0;

 if (are_pin_swap)
  bridge->r.data_lane1_reg1 = 1 << 1;
 bridge->r.data_lane1_reg1 |= DATA_ENABLE;

 return 0;
}
