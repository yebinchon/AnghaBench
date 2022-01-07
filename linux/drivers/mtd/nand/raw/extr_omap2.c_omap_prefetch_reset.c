
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gpmc_prefetch_config1; int gpmc_prefetch_control; } ;
struct omap_nand_info {TYPE_1__ reg; } ;


 int CS_MASK ;
 int EINVAL ;
 int PREFETCH_CONFIG1_CS_SHIFT ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int omap_prefetch_reset(int cs, struct omap_nand_info *info)
{
 u32 config1;


 config1 = readl(info->reg.gpmc_prefetch_config1);
 if (((config1 >> PREFETCH_CONFIG1_CS_SHIFT) & CS_MASK) != cs)
  return -EINVAL;


 writel(0x0, info->reg.gpmc_prefetch_control);


 writel(0x0, info->reg.gpmc_prefetch_config1);

 return 0;
}
