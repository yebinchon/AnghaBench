
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {scalar_t__ mem_addr; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 mei_me_reg_read(const struct mei_me_hw *hw,
          unsigned long offset)
{
 return ioread32(hw->mem_addr + offset);
}
