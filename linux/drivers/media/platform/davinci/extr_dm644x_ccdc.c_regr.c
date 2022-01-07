
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 scalar_t__ __raw_readl (scalar_t__) ;
 TYPE_1__ ccdc_cfg ;

__attribute__((used)) static inline u32 regr(u32 offset)
{
 return __raw_readl(ccdc_cfg.base_addr + offset);
}
