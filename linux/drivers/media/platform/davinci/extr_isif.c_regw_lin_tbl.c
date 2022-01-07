
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ linear_tbl1_addr; scalar_t__ linear_tbl0_addr; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;
 TYPE_1__ isif_cfg ;

__attribute__((used)) static inline void regw_lin_tbl(u32 val, u32 offset, int i)
{
 if (!i)
  __raw_writel(val, isif_cfg.linear_tbl0_addr + offset);
 else
  __raw_writel(val, isif_cfg.linear_tbl1_addr + offset);
}
