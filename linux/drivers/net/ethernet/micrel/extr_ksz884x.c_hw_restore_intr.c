
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct ksz_hw {int dummy; } ;


 int hw_ena_intr (struct ksz_hw*) ;

__attribute__((used)) static inline void hw_restore_intr(struct ksz_hw *hw, uint interrupt)
{
 if (interrupt)
  hw_ena_intr(hw);
}
