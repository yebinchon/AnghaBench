
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {scalar_t__ mem_addr; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void mei_me_reg_write(const struct mei_me_hw *hw,
     unsigned long offset, u32 value)
{
 iowrite32(value, hw->mem_addr + offset);
}
