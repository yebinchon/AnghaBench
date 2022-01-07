
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complete (void*) ;

__attribute__((used)) static void omap2_onenand_dma_complete_func(void *completion)
{
 complete(completion);
}
