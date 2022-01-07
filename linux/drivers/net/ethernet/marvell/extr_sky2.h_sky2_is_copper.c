
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {int flags; } ;


 int SKY2_HW_FIBRE_PHY ;

__attribute__((used)) static inline int sky2_is_copper(const struct sky2_hw *hw)
{
 return !(hw->flags & SKY2_HW_FIBRE_PHY);
}
