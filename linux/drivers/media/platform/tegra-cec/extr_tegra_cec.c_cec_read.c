
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_cec {scalar_t__ cec_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 cec_read(struct tegra_cec *cec, u32 reg)
{
 return readl(cec->cec_base + reg);
}
