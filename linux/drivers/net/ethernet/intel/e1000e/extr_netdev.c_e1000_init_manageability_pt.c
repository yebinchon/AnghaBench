
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int BIT (int) ;
 int E1000_MANC2H_PORT_623 ;
 int E1000_MANC2H_PORT_664 ;
 int E1000_MANC_EN_MNG2HOST ;
 int E1000_MDEF_PORT_623 ;
 int E1000_MDEF_PORT_664 ;
 int FLAG_MNG_PT_ENABLED ;
 int MANC ;
 int MANC2H ;
 int MDEF (int) ;


 int e_warn (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_init_manageability_pt(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 manc, manc2h, mdef, i, j;

 if (!(adapter->flags & FLAG_MNG_PT_ENABLED))
  return;

 manc = er32(MANC);





 manc |= E1000_MANC_EN_MNG2HOST;
 manc2h = er32(MANC2H);

 switch (hw->mac.type) {
 default:
  manc2h |= (E1000_MANC2H_PORT_623 | E1000_MANC2H_PORT_664);
  break;
 case 129:
 case 128:



  for (i = 0, j = 0; i < 8; i++) {
   mdef = er32(MDEF(i));


   if (mdef & ~(E1000_MDEF_PORT_623 | E1000_MDEF_PORT_664))
    continue;


   if (mdef)
    manc2h |= BIT(i);

   j |= mdef;
  }

  if (j == (E1000_MDEF_PORT_623 | E1000_MDEF_PORT_664))
   break;


  for (i = 0, j = 0; i < 8; i++)
   if (er32(MDEF(i)) == 0) {
    ew32(MDEF(i), (E1000_MDEF_PORT_623 |
            E1000_MDEF_PORT_664));
    manc2h |= BIT(1);
    j++;
    break;
   }

  if (!j)
   e_warn("Unable to create IPMI pass-through filter\n");
  break;
 }

 ew32(MANC2H, manc2h);
 ew32(MANC, manc);
}
