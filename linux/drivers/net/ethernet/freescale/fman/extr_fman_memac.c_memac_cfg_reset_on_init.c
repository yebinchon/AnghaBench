
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fman_mac {TYPE_1__* memac_drv_param; } ;
struct TYPE_2__ {int reset_on_init; } ;


 int EINVAL ;
 scalar_t__ is_init_done (TYPE_1__*) ;

int memac_cfg_reset_on_init(struct fman_mac *memac, bool enable)
{
 if (is_init_done(memac->memac_drv_param))
  return -EINVAL;

 memac->memac_drv_param->reset_on_init = enable;

 return 0;
}
