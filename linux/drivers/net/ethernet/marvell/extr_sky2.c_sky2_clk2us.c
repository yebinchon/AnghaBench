
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {int dummy; } ;


 int sky2_mhz (struct sky2_hw const*) ;

__attribute__((used)) static inline u32 sky2_clk2us(const struct sky2_hw *hw, u32 clk)
{
 return clk / sky2_mhz(hw);
}
