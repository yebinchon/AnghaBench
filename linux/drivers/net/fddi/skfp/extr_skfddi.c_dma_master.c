
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_2__ {scalar_t__ SharedMemAddr; scalar_t__ SharedMemDMA; } ;
struct s_smc {TYPE_1__ os; } ;



u_long dma_master(struct s_smc * smc, void *virt, int len, int flag)
{
 return smc->os.SharedMemDMA +
  ((char *) virt - (char *)smc->os.SharedMemAddr);
}
