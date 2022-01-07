
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_rga {int dummy; } ;


 int rga_read (struct rockchip_rga*,int) ;
 int rga_write (struct rockchip_rga*,int,int) ;

__attribute__((used)) static inline void rga_mod(struct rockchip_rga *rga, u32 reg, u32 val, u32 mask)
{
 u32 temp = rga_read(rga, reg) & ~(mask);

 temp |= val & mask;
 rga_write(rga, reg, temp);
}
