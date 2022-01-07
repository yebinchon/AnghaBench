
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rockchip_rga {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 rga_read(struct rockchip_rga *rga, u32 reg)
{
 return readl(rga->regs + reg);
}
