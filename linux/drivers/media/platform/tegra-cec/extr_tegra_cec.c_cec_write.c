
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_cec {scalar_t__ cec_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void cec_write(struct tegra_cec *cec, u32 reg, u32 val)
{
 writel(val, cec->cec_base + reg);
}
