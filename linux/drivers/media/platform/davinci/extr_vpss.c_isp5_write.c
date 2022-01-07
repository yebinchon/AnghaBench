
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ vpss_regs_base0; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;
 TYPE_1__ oper_cfg ;

__attribute__((used)) static inline void isp5_write(u32 val, u32 offset)
{
 __raw_writel(val, oper_cfg.vpss_regs_base0 + offset);
}
