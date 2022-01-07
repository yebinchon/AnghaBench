
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {unsigned int regs; } ;


 int writew (int ,unsigned int) ;

__attribute__((used)) static inline void sky2_write16(const struct sky2_hw *hw, unsigned reg, u16 val)
{
 writew(val, hw->regs + reg);
}
