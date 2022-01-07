
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ vpss_regs_base0; } ;


 scalar_t__ __raw_readl (scalar_t__) ;
 TYPE_1__ oper_cfg ;

__attribute__((used)) static inline u32 isp5_read(u32 offset)
{
 return __raw_readl(oper_cfg.vpss_regs_base0 + offset);
}
