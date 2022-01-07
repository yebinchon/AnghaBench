
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ef4_phy_mode { ____Placeholder_ef4_phy_mode } ef4_phy_mode ;


 int PHY_MODE_TX_DISABLED ;

__attribute__((used)) static inline bool ef4_phy_mode_disabled(enum ef4_phy_mode mode)
{
 return !!(mode & ~PHY_MODE_TX_DISABLED);
}
