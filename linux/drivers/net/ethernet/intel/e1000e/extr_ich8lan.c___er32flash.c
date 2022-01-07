
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ flash_address; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 __er32flash(struct e1000_hw *hw, unsigned long reg)
{
 return readl(hw->flash_address + reg);
}
