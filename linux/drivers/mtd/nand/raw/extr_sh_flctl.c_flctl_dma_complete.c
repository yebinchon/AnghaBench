
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int dma_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void flctl_dma_complete(void *param)
{
 struct sh_flctl *flctl = param;

 complete(&flctl->dma_complete);
}
