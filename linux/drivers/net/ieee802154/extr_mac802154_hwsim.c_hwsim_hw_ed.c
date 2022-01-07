
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802154_hw {int dummy; } ;



__attribute__((used)) static int hwsim_hw_ed(struct ieee802154_hw *hw, u8 *level)
{
 *level = 0xbe;

 return 0;
}
