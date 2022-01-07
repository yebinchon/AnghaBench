
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfe_device {int base; } ;


 int readl_relaxed (int) ;
 int writel_relaxed (int,int) ;

__attribute__((used)) static inline void vfe_reg_clr(struct vfe_device *vfe, u32 reg, u32 clr_bits)
{
 u32 bits = readl_relaxed(vfe->base + reg);

 writel_relaxed(bits & ~clr_bits, vfe->base + reg);
}
