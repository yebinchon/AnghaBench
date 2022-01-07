
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alx_hw {int hw_addr; } ;


 int readl (int ) ;

__attribute__((used)) static inline void alx_post_write(struct alx_hw *hw)
{
 readl(hw->hw_addr);
}
