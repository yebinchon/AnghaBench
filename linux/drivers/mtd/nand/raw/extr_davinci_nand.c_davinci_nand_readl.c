
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_nand_info {scalar_t__ base; } ;


 unsigned int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int davinci_nand_readl(struct davinci_nand_info *info,
  int offset)
{
 return __raw_readl(info->base + offset);
}
