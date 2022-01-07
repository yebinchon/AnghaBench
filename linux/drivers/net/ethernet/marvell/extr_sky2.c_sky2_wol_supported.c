
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sky2_hw {int dummy; } ;


 int WAKE_MAGIC ;
 int WAKE_PHY ;
 scalar_t__ sky2_is_copper (struct sky2_hw const*) ;

__attribute__((used)) static inline u8 sky2_wol_supported(const struct sky2_hw *hw)
{
 return sky2_is_copper(hw) ? (WAKE_PHY | WAKE_MAGIC) : 0;
}
