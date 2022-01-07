
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct alx_hw {scalar_t__ hw_addr; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void alx_write_mem16(struct alx_hw *hw, u32 reg, u16 val)
{
 writew(val, hw->hw_addr + reg);
}
