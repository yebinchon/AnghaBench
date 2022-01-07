
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int sge_control2; int sge_control; } ;
struct TYPE_3__ {TYPE_2__ sge; int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 unsigned int INGPACKBOUNDARY_16B_X ;
 unsigned int INGPACKBOUNDARY_G (int ) ;
 unsigned int INGPACKBOUNDARY_SHIFT_X ;
 unsigned int INGPADBOUNDARY_G (int ) ;
 unsigned int INGPADBOUNDARY_SHIFT_X ;
 unsigned int T6_INGPADBOUNDARY_SHIFT_X ;
 int is_t4 (int ) ;
 unsigned int max (unsigned int,unsigned int) ;

int t4vf_fl_pkt_align(struct adapter *adapter)
{
 u32 sge_control, sge_control2;
 unsigned int ingpadboundary, ingpackboundary, fl_align, ingpad_shift;

 sge_control = adapter->params.sge.sge_control;
 if (CHELSIO_CHIP_VERSION(adapter->params.chip) <= CHELSIO_T5)
  ingpad_shift = INGPADBOUNDARY_SHIFT_X;
 else
  ingpad_shift = T6_INGPADBOUNDARY_SHIFT_X;

 ingpadboundary = 1 << (INGPADBOUNDARY_G(sge_control) + ingpad_shift);

 fl_align = ingpadboundary;
 if (!is_t4(adapter->params.chip)) {



  sge_control2 = adapter->params.sge.sge_control2;
  ingpackboundary = INGPACKBOUNDARY_G(sge_control2);
  if (ingpackboundary == INGPACKBOUNDARY_16B_X)
   ingpackboundary = 16;
  else
   ingpackboundary = 1 << (ingpackboundary +
      INGPACKBOUNDARY_SHIFT_X);

  fl_align = max(ingpadboundary, ingpackboundary);
 }
 return fl_align;
}
