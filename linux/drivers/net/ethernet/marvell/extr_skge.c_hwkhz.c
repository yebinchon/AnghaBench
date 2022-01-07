
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {int dummy; } ;


 scalar_t__ is_genesis (struct skge_hw const*) ;

__attribute__((used)) static inline u32 hwkhz(const struct skge_hw *hw)
{
 return is_genesis(hw) ? 53125 : 78125;
}
