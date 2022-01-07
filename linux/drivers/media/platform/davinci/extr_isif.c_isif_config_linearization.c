
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int decimal; int integer; } ;
struct isif_linearize {int corr_shft; int * table; TYPE_1__ scale_fact; int en; } ;


 int ISIF_LINEAR_TAB_SIZE ;
 int ISIF_LIN_CORRSFT_SHIFT ;
 int ISIF_LIN_SCALE_FACT_INTEG_SHIFT ;
 int LINCFG0 ;
 int LINCFG1 ;
 int regw (int,int ) ;
 int regw_lin_tbl (int ,int,int) ;

__attribute__((used)) static void isif_config_linearization(struct isif_linearize *linearize)
{
 u32 val, i;

 if (!linearize->en) {
  regw(0, LINCFG0);
  return;
 }


 val = (linearize->corr_shft << ISIF_LIN_CORRSFT_SHIFT) | 1;
 regw(val, LINCFG0);


 val = ((!!linearize->scale_fact.integer) <<
        ISIF_LIN_SCALE_FACT_INTEG_SHIFT) |
        linearize->scale_fact.decimal;
 regw(val, LINCFG1);

 for (i = 0; i < ISIF_LINEAR_TAB_SIZE; i++) {
  if (i % 2)
   regw_lin_tbl(linearize->table[i], ((i >> 1) << 2), 1);
  else
   regw_lin_tbl(linearize->table[i], ((i >> 1) << 2), 0);
 }
}
