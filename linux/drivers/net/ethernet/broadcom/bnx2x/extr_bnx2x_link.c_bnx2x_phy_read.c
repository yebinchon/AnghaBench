
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct link_params {size_t num_phys; TYPE_1__* phy; int bp; } ;
struct TYPE_2__ {size_t addr; } ;


 int EINVAL ;
 int bnx2x_cl45_read (int ,TYPE_1__*,size_t,int ,int *) ;

int bnx2x_phy_read(struct link_params *params, u8 phy_addr,
     u8 devad, u16 reg, u16 *ret_val)
{
 u8 phy_index;



 for (phy_index = 0; phy_index < params->num_phys; phy_index++) {
  if (params->phy[phy_index].addr == phy_addr) {
   return bnx2x_cl45_read(params->bp,
            &params->phy[phy_index], devad,
            reg, ret_val);
  }
 }
 return -EINVAL;
}
