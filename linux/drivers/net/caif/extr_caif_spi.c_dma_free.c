
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfspi {int dummy; } ;
typedef int dma_addr_t ;


 int kfree (void*) ;

__attribute__((used)) static inline void dma_free(struct cfspi *cfspi, void *cpu_addr,
  dma_addr_t handle)
{
 kfree(cpu_addr);
}
