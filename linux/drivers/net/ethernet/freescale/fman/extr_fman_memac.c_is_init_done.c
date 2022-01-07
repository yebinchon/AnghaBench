
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memac_cfg {int dummy; } ;



__attribute__((used)) static bool is_init_done(struct memac_cfg *memac_drv_params)
{

 if (!memac_drv_params)
  return 1;

 return 0;
}
