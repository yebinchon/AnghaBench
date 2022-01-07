
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ min; scalar_t__ max; int paddr; } ;


 int NB_H_FILTER ;
 TYPE_1__* bdisp_h_filter ;

__attribute__((used)) static dma_addr_t bdisp_hw_get_hf_addr(u16 inc)
{
 unsigned int i;

 for (i = NB_H_FILTER - 1; i > 0; i--)
  if ((bdisp_h_filter[i].min < inc) &&
      (inc <= bdisp_h_filter[i].max))
   break;

 return bdisp_h_filter[i].paddr;
}
