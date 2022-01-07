
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 unsigned int INGPACKBOUNDARY_16B_X ;
 unsigned int INGPACKBOUNDARY_G (int ) ;
 unsigned int INGPACKBOUNDARY_SHIFT_X ;
 unsigned int INGPADBOUNDARY_G (int ) ;
 unsigned int INGPADBOUNDARY_SHIFT_X ;
 int SGE_CONTROL2_A ;
 int SGE_CONTROL_A ;
 unsigned int T6_INGPADBOUNDARY_SHIFT_X ;
 int is_t4 (int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 int t4_read_reg (struct adapter*,int ) ;

int t4_fl_pkt_align(struct adapter *adap)
{
 u32 sge_control, sge_control2;
 unsigned int ingpadboundary, ingpackboundary, fl_align, ingpad_shift;

 sge_control = t4_read_reg(adap, SGE_CONTROL_A);
 if (CHELSIO_CHIP_VERSION(adap->params.chip) <= CHELSIO_T5)
  ingpad_shift = INGPADBOUNDARY_SHIFT_X;
 else
  ingpad_shift = T6_INGPADBOUNDARY_SHIFT_X;

 ingpadboundary = 1 << (INGPADBOUNDARY_G(sge_control) + ingpad_shift);

 fl_align = ingpadboundary;
 if (!is_t4(adap->params.chip)) {



  sge_control2 = t4_read_reg(adap, SGE_CONTROL2_A);
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
