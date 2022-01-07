
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igc_hw {int dummy; } ;


 int IGC_EECD ;
 int IGC_EECD_REQ ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

void igc_release_nvm(struct igc_hw *hw)
{
 u32 eecd;

 eecd = rd32(IGC_EECD);
 eecd &= ~IGC_EECD_REQ;
 wr32(IGC_EECD, eecd);
}
