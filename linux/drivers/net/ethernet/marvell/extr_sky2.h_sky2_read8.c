
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sky2_hw {unsigned int regs; } ;


 int readb (unsigned int) ;

__attribute__((used)) static inline u8 sky2_read8(const struct sky2_hw *hw, unsigned reg)
{
 return readb(hw->regs + reg);
}
