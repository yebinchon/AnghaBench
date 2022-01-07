
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {unsigned int regs; } ;


 int writel (int ,unsigned int) ;

__attribute__((used)) static inline void sky2_write32(const struct sky2_hw *hw, unsigned reg, u32 val)
{
 writel(val, hw->regs + reg);
}
