
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_DTXSWC ;
 int E1000_DTXSWC_VMDQ_LOOPBACK_EN ;
 int E1000_TXSWC ;



 int rd32 (int ) ;
 int wr32 (int ,int ) ;

void igb_vmdq_set_loopback_pf(struct e1000_hw *hw, bool enable)
{
 u32 dtxswc;

 switch (hw->mac.type) {
 case 130:
  dtxswc = rd32(E1000_DTXSWC);
  if (enable)
   dtxswc |= E1000_DTXSWC_VMDQ_LOOPBACK_EN;
  else
   dtxswc &= ~E1000_DTXSWC_VMDQ_LOOPBACK_EN;
  wr32(E1000_DTXSWC, dtxswc);
  break;
 case 128:
 case 129:
  dtxswc = rd32(E1000_TXSWC);
  if (enable)
   dtxswc |= E1000_DTXSWC_VMDQ_LOOPBACK_EN;
  else
   dtxswc &= ~E1000_DTXSWC_VMDQ_LOOPBACK_EN;
  wr32(E1000_TXSWC, dtxswc);
  break;
 default:

  break;
 }

}
