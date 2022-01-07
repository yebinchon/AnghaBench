
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_desc_info {TYPE_1__* desc; } ;
struct TYPE_2__ {int comp_err; } ;


 int ROCKER_DMA_DESC_COMP_ERR_GEN ;

__attribute__((used)) static void rocker_desc_gen_clear(const struct rocker_desc_info *desc_info)
{
 desc_info->desc->comp_err &= ~ROCKER_DMA_DESC_COMP_ERR_GEN;
}
