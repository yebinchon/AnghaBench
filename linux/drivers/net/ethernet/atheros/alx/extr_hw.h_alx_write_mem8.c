
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct alx_hw {scalar_t__ hw_addr; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void alx_write_mem8(struct alx_hw *hw, u32 reg, u8 val)
{
 writeb(val, hw->hw_addr + reg);
}
