
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ieee802154_hw {int dummy; } ;


 int pr_warn (char*) ;

__attribute__((used)) static int mrf24j40_ed(struct ieee802154_hw *hw, u8 *level)
{

 pr_warn("mrf24j40: ed not implemented\n");
 *level = 0;
 return 0;
}
