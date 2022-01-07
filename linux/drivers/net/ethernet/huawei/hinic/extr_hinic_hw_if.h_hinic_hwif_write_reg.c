
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hinic_hwif {scalar_t__ cfg_regs_bar; } ;


 int cpu_to_be32 (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hinic_hwif_write_reg(struct hinic_hwif *hwif, u32 reg,
     u32 val)
{
 writel(cpu_to_be32(val), hwif->cfg_regs_bar + reg);
}
