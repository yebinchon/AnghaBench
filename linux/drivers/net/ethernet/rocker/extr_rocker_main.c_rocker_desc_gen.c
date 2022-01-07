
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rocker_desc_info {TYPE_1__* desc; } ;
struct TYPE_2__ {int comp_err; } ;


 int ROCKER_DMA_DESC_COMP_ERR_GEN ;

__attribute__((used)) static bool rocker_desc_gen(const struct rocker_desc_info *desc_info)
{
 u32 comp_err = desc_info->desc->comp_err;

 return comp_err & ROCKER_DMA_DESC_COMP_ERR_GEN ? 1 : 0;
}
