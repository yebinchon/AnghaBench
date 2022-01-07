
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int ulong ;
struct TYPE_2__ {scalar_t__ SharedMemAddr; scalar_t__ SharedMemHeap; scalar_t__ SharedMemSize; scalar_t__ SharedMemDMA; } ;
struct s_smc {TYPE_1__ os; } ;


 int pr_debug (char*,...) ;
 int printk (char*,unsigned int) ;

void *mac_drv_get_space(struct s_smc *smc, unsigned int size)
{
 void *virt;

 pr_debug("mac_drv_get_space (%d bytes), ", size);
 virt = (void *) (smc->os.SharedMemAddr + smc->os.SharedMemHeap);

 if ((smc->os.SharedMemHeap + size) > smc->os.SharedMemSize) {
  printk("Unexpected SMT memory size requested: %d\n", size);
  return ((void*)0);
 }
 smc->os.SharedMemHeap += size;

 pr_debug("mac_drv_get_space end\n");
 pr_debug("virt addr: %lx\n", (ulong) virt);
 pr_debug("bus  addr: %lx\n", (ulong)
        (smc->os.SharedMemDMA +
  ((char *) virt - (char *)smc->os.SharedMemAddr)));
 return virt;
}
