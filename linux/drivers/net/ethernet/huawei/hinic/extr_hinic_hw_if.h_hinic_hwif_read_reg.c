
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hinic_hwif {scalar_t__ cfg_regs_bar; } ;


 scalar_t__ be32_to_cpu (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 hinic_hwif_read_reg(struct hinic_hwif *hwif, u32 reg)
{
 return be32_to_cpu(readl(hwif->cfg_regs_bar + reg));
}
