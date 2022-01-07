
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skge_hw {scalar_t__ regs; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void skge_write8(const struct skge_hw *hw, int reg, u8 val)
{
 writeb(val, hw->regs + reg);
}
