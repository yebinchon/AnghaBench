
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fman_mac {TYPE_1__* memac_drv_param; } ;
struct fixed_phy_status {int dummy; } ;
struct TYPE_2__ {struct fixed_phy_status* fixed_link; } ;


 int EINVAL ;
 scalar_t__ is_init_done (TYPE_1__*) ;

int memac_cfg_fixed_link(struct fman_mac *memac,
    struct fixed_phy_status *fixed_link)
{
 if (is_init_done(memac->memac_drv_param))
  return -EINVAL;

 memac->memac_drv_param->fixed_link = fixed_link;

 return 0;
}
