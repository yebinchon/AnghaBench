
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {int dummy; } ;


 int hwkhz (struct skge_hw const*) ;

__attribute__((used)) static inline u32 skge_clk2usec(const struct skge_hw *hw, u32 ticks)
{
 return (ticks * 1000) / hwkhz(hw);
}
