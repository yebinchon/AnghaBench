
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sky2_hw {int dummy; } ;


 scalar_t__ gma_read32 (struct sky2_hw*,unsigned int,unsigned int) ;

__attribute__((used)) static inline u32 get_stats32(struct sky2_hw *hw, unsigned port, unsigned reg)
{
 u32 val;

 do {
  val = gma_read32(hw, port, reg);
 } while (gma_read32(hw, port, reg) != val);

 return val;
}
