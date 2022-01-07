
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_EECD ;
 int E1000_EECD_REQ ;
 int e1000_stop_nvm (struct e1000_hw*) ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

void igb_release_nvm(struct e1000_hw *hw)
{
 u32 eecd;

 e1000_stop_nvm(hw);

 eecd = rd32(E1000_EECD);
 eecd &= ~E1000_EECD_REQ;
 wr32(E1000_EECD, eecd);
}
