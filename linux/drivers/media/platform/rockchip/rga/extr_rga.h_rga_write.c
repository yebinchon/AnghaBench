
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rockchip_rga {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void rga_write(struct rockchip_rga *rga, u32 reg, u32 value)
{
 writel(value, rga->regs + reg);
}
