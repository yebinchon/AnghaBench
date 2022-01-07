
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long SharedMemDMA; scalar_t__ SharedMemAddr; } ;
struct s_smc {TYPE_1__ os; } ;



unsigned long mac_drv_virt2phys(struct s_smc *smc, void *virt)
{
 return smc->os.SharedMemDMA +
  ((char *) virt - (char *)smc->os.SharedMemAddr);
}
